#!/bin/bash

# ==============================================================================
# Hermes Linux 全功能管理面板 - 工业标准版 (v10.0)
# 架构参考: kejilion.sh
# ==============================================================================

# 强制绑定 TTY，解决 curl | bash 导致的交互失效
exec < /dev/tty

# --- 配置区 ---
REPO_URL="https://github.com/NousResearch/hermes-agent"
HERMES_DIR="$HOME/hermes-agent"
GATEWAY_PID_FILE="$HOME/.hermes/gateway.pid"

# 颜色定义
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

# --- 核心函数 ---

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

function model_manage() {
    mkdir -p "$HOME/.hermes"
    echo -e "${YELLOW}📝 正在打开 .env 配置文件...${NC}"
    nano "$HOME/.hermes/.env"
}

function install_hermes() {
    check_sudo
    echo -e "${YELLOW}📦 正在安装 Linux 基础依赖...${NC}"
    sudo apt-get update -y
    sudo apt-get install -y git python3.11 python3.11-venv python3-pip
    
    if [ ! -d "$HERMES_DIR" ]; then
        echo -e "${YELLOW}📂 正在克隆 Hermes 代码...${NC}"
        git clone $REPO_URL "$HERMES_DIR"
    fi
    
    cd "$HERMES_DIR"
    echo -e "${YELLOW}🐍 构建虚拟环境...${NC}"
    python3.11 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
    mkdir -p ~/.hermes
    
    echo -e "${GREEN}✅ 安装成功！${NC}"
    sleep 1
    model_manage
}

function start_gateway() {
    activate_venv || return 1
    if [ -f "$GATEWAY_PID_FILE" ]; then
        echo -e "${RED}⚠️ Gateway 已在运行 (PID: $(cat $GATEWAY_PID_FILE))${NC}"
        return
    fi
    cd "$HERMES_DIR"
    export PYTHONPATH=$HERMES_DIR
    echo -e "${YELLOW}🚀 启动 Gateway (后台)...${NC}"
    nohup python3 gateway/run.py > "$HOME/.hermes/gateway.log" 2>&1 &
    echo $! > "$GATEWAY_PID_FILE"
    echo -e "${GREEN}✅ 已运行。日志: ~/.hermes/gateway.log${NC}"
}

function stop_gateway() {
    if [ -f "$GATEWAY_PID_FILE" ]; then
        kill $(cat "$GATEWAY_PID_FILE") && rm "$GATEWAY_PID_FILE"
        echo -e "${GREEN}✅ Gateway 已停止。${NC}"
    else
        echo -e "${RED}❌ 未发现运行中的 Gateway。${NC}"
    fi
}

function start_chat() {
    activate_venv || return 1
    cd "$HERMES_DIR"
    export PYTHONPATH=$HERMES_DIR
    export TERM=xterm-256color
    python3 cli.py
}

function run_setup() {
    activate_venv || return 1
    cd "$HERMES_DIR"
    echo -e "${BLUE}⚙️ 启动初始化配置向导...${NC}"
    
    # 工业级调用方式：
    # 1. 强制环境变量
    export PYTHONPATH=$HERMES_DIR
    export TERM=xterm-256color
    export COLORTERM=truecolor
    
    # 2. 直接运行脚本文件（避开模块路径解析坑）
    # 使用 python3 -u 确保 TUI 输出实时同步
    python3 -u hermes_cli/setup.py 2>&1
}

function update_hermes() {
    activate_venv || return 1
    cd "$HERMES_DIR"
    echo -e "${YELLOW}🔄 更新代码与依赖...${NC}"
    git pull && pip install -r requirements.txt
    echo -e "${GREEN}✅ 更新完成！${NC}"
}

function uninstall_hermes() {
    echo -e "${RED}⚠️ 确定卸载吗？(y/n)${NC}"
    read -r confirm
    if [ "$confirm" == "y" ]; then
        stop_gateway
        rm -rf "$HERMES_DIR" "$HOME/.hermes"
        echo -e "${GREEN}✅ 已卸载。${NC}"
    fi
}

# --- 主菜单循环 ---
while true; do
    clear
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
