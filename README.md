# 🚀 Hermes Agent 一键管理工具

这是一个面向 Hermes Agent 的跨平台管理脚本集合，支持 **macOS**、**Linux** 和 **Windows**。
Windows 版已加入中文终端管理菜单，可直接完成安装、Gateway 启停、API/模型管理、模型同步、模型切换、初始化向导、更新与卸载。

## 快速启动

### Windows：简易管理工具命令

在 PowerShell 中执行：

```powershell
irm https://github.com/shenping1200/hermes-mac-kejilion/raw/main/h|iex
```

Windows 安装管理脚本：

```powershell
irm https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-manager-windows.ps1 | iex
```

### macOS安装命令

```zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-mac-kejilion.sh)"
```

### Linux / Ubuntu / Debian 安装命令

```zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-linux-kejilion.sh)"
```

## Windows 管理工具功能

```text
=================================================
           Hermes Agent 终端管理工具
=================================================
1. 安装 Hermes Agent
2. 启动 Gateway (消息网关/后台服务)
3. 停止 Gateway
4. API/模型管理 (供应商与模型切换)
5. 启动终端对话UI (Interactive Chat)
6. 运行初始化配置向导 (Setup Wizard)
7. 检查并更新 Hermes
8. 卸载 Hermes
0. 退出
=================================================
```

### API/模型管理

- 显示当前激活模型。
- 显示已配置 API 供应商、模型数量和 `/models` 延迟。
- 添加 OpenAI 兼容 API 供应商，并自动同步 `/models`。
- 同步已有供应商模型列表，保留已有模型元数据，例如 `context_length`。
- 支持中文模型名称显示与切换。
- 可打开 Hermes 原生模型选择器。

## Windows 说明

- 默认安装目录：`C:\hermes-agent`。
- 默认配置目录：`%LOCALAPPDATA%\hermes`。
- 脚本会优先使用 `uv run hermes`。
- Interactive Chat 需要真实 Windows 控制台；如果当前宿主没有控制台缓冲区，脚本会自动打开新的 PowerShell 窗口避免 `NoConsoleScreenBufferError`。

## 兼容命令

旧的一键安装命令仍保留：

```powershell
irm https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/install-hermes-windows.ps1 | iex
```

推荐 Windows 用户使用新的管理工具命令，因为它包含安装、启动、模型管理和更新等完整菜单。

---

Powered by 小龙 / Hermes Agent
