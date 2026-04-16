#!/bin/bash

# ==============================================================================
# Hermes Linux 全功能管理面板 - 稳健版 (Fix Pipe Issue)
# ==============================================================================

# 强制将标准输入重定向到终端，解决 curl ... | bash 导致的死循环闪烁问题
exec < /dev/tty

REPO_URL="https://github.com/NousResearch/hermes-agent"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

HERMES_DIR="$HOME/hermes-agent"
GATEWAY_PID_FILE="$HOME/.hermes/gateway.pid"

function check_sudo() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "${YELLOW}⚠️ 部分操作需要管理员权限，执行时可能会提示输入密码...${NC}"
    fi
}

function activate_venv() {
    if [ -d "$HERMES_DIR/venv" ]; then
        source "$HERMES_DIR/venv/bin/activate"
    else
        echo -e "${RED}❌ 虚拟环境不存在，请先运行 [1. 安装 Hermes Agent]${NC}"
        return 1
    fi
}

function install_hermes() {
    check_sudo
    echo -e "${YELLOW}📦 正在安装 Linux 基础依赖 (Git & Python 3.11)...${NC}"
    sudo apt-get update -y
    sudo apt-get install -y git python3.11 python3.11-venv python3-pip
    if [ ! -d "$HERMES_DIR" ]; then
        echo -e "${YELLOW}📂 正在克隆 Hermes 本体代码...${NC}"
        git clone $REPO_URL "$HERMES_DIR"
    fi
    cd "$HERMES_DIR"
    echo -e "${YELLOW}🐍 配置虚拟环境并安装依赖...${NC}"
    python3.11 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
    mkdir -p ~/.hermes
    echo -e "${GREEN}✅ Linux 安装成功！${NC}"
}

function start_gateway() {
    activate_venv || return 1
    if [ -f "$GATEWAY_PID_FILE" ]; then
        echo -e "${RED}⚠️ Gateway 已经在运行中 (PID: $(cat $GATEWAY_PID_FILE))${NC}"
        return
    fi
    cd "$HERMES_DIR"
    echo -e "${YELLOW}🚀 正在后台启动 Gateway...${NC}"
    nohup python gateway/run.py > "$HOME/.hermes/gateway.log" 2>&1 &
    echo $! > "$GATEWAY_PID_FILE"
    echo -e "${GREEN}✅ Gateway 已在后台运行。日志: ~/.hermes/gateway.log${NC}"
}

function stop_gateway() {
    if [ -f "$GATEWAY_PID_FILE" ]; then
        kill $(cat "$GATEWAY_PID_FILE") && rm "$GATEWAY_PID_FILE"
        echo -e "${GREEN}✅ Gateway 已停止。${NC}"
    else
        echo -e "${RED}❌ 未发现运行中的 Gateway。${NC}"
    fi
}

function model_manage() {
    if [ -f "$HOME/.hermes/.env" ]; then
        nano "$HOME/.hermes/.env"
    else
        echo -e "${YELLOW}📝 正在创建 .env 文件...${NC}"
        touch "$HOME/.hermes/.env"
        nano "$HOME/.hermes/.env"
    fi
}

function start_chat() {
    activate_venv || return 1
    cd "$HERMES_DIR" && python cli.py
}

function run_setup() {
    activate_venv || return 1
    cd "$HERMES_DIR" && python hermes_cli/setup.py
}

function update_hermes() {
    activate_venv || return 1
    cd "$HERMES_DIR"
    echo -e "${YELLOW}🔄 正在拉取最新代码并更新依赖...${NC}"
    git pull && pip install -r requirements.txt
    echo -e "${GREEN}✅ 更新完成！${NC}"
}

function uninstall_hermes() {
    echo -e "${RED}⚠️ 确定要彻底卸载 Hermes 吗？(y/n)${NC}"
    read -r confirm
    if [ "$confirm" == "y" ]; then
        stop_gateway
        rm -rf "$HERMES_DIR" "$HOME/.hermes"
        echo -e "${GREEN}✅ 已全部卸载。${NC}"
    fi
}

# 初始化
clear

while true; do
    # 光标回顶，防止闪烁
    printf "\033[H"
    echo -e "${BLUE}====================================================${NC}"
    echo -e "${BLUE}            Hermes Linux 管理面板                   ${NC}"
    echo -e "${BLUE}====================================================${NC}"
    echo -e " 1. ${GREEN}安装 Hermes Agent${NC}"
    echo -e " 2. ${GREEN}启动 Gateway (后台服务)${NC}"
    echo -e " 3. ${GREEN}停止 Gateway${NC}"
    echo -e " 4. ${GREEN}API/模型管理 (.env)${NC}"
    echo -e " 5. ${GREEN}启动终端对话UI (Chat)${NC}"
    echo -e " 6. ${GREEN}运行初始化配置向导${NC}"
    echo -e " 7. ${GREEN}检查并更新 Hermes${NC}"
    echo -e " 8. ${RED}卸载 Hermes${NC}"
    echo -e " 0. ${YELLOW}退出${NC}"
    echo -e "${BLUE}====================================================${NC}"
    
    # 使用 -r 避免转义，并且已经在顶部执行了 exec < /dev/tty
    read -r -p "请输入选择 [0-8]: " choice
    
    case $choice in
        1) install_hermes ;;
        2) start_gateway ;;
        3) stop_gateway ;;
        4) model_manage ;;
        5) start_chat ;;
        6) run_setup ;;
        7) update_hermes ;;
        8) uninstall_hermes ;;
        0) exit 0 ;;
        *) echo -e "${RED}❌ 无效选择！${NC}" ;;
    esac
    echo -e "\n按任意键返回主菜单..."
    read -n 1
done
