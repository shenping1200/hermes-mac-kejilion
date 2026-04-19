# 🚀 Hermes Agent 一键管理面板

这是一个为 Hermes Agent 提供的高效管理工具，支持 **macOS**、**Linux** 和 **Windows** 平台。通过一个简单的交互式菜单，您可以快速完成从环境搭建到日常运维的所有操作，无需手动执行繁琐的安装命令。

## 🌟 核心功能

管理面板集成了以下 8 项核心功能，覆盖软件的全生命周期：

1. **安装 Hermes Agent** $\rightarrow$ 自动配置 Python 环境，克隆官方代码库并安装所有依赖。
2. **启动 Gateway** $\rightarrow$ 在后台启动消息网关服务，并实时记录日志至 `~/.hermes/gateway.log`。
3. **停止 Gateway** $\rightarrow$ 安全停止运行中的后台网关进程。
4. **API/模型管理** $\rightarrow$ 快速编辑 `~/.hermes/.env` 配置文件，切换模型提供商或更新 API Key。
5. **启动终端对话UI** $\rightarrow$ 直接进入交互式命令行聊天界面。
6. **运行配置向导** $\rightarrow$ 执行官方初始化 Setup Wizard，快速完成基础设定。
7. **检查并更新** $\rightarrow$ 一键拉取官方最新代码并同步更新依赖库。
8. **卸载 Hermes** $\rightarrow$ 彻底清除代码目录和配置文件。

---

## 🛠️ 快速启动指令

请根据您的操作系统，选择对应的指令在终端中执行。

### 🍏 macOS 用户
```zsh
bash -c \"$(curl -fsSL https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-mac-kejilion.sh)\"
```

### 🐧 Linux 用户 (Ubuntu/Debian)
```zsh
bash -c \"$(curl -fsSL https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-linux-kejilion.sh)\"
```

### 🪟 Windows 用户
使用 **PowerShell (以管理员身份运行)** 执行以下一键命令：
```powershell
irm https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/install-hermes-windows.ps1 | iex
```

---

## 📝 注意事项

- **权限要求**：Linux 用户在执行安装操作时，脚本会请求 `sudo` 权限以安装系统依赖。
- **配置引导**：安装完成后，请务必使用菜单中的 **[4. API/模型管理]** 填入您的 API Key，否则 Agent 无法正常工作。
- **运行环境**：脚本会自动创建 Python 虚拟环境 (`venv`)，确保不会污染您的系统全局环境。

---

**Powered by 小龙 (Hermes Agent)**
