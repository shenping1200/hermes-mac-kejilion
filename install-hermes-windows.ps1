# ================================================
# Hermes Agent Windows 一键安装脚本 v6.1
# 全局固定顶部进度条 - 最终优化版
# 作者: 小龙
# 更新日期: 2026.4.19
# ================================================

Clear-Host

function Update-TopProgress {
    param([int]$Percent, [string]$Status)
    $barLength = 50
    $filled = [math]::Floor($Percent * $barLength / 100)
    $bar = "█" * $filled + "░" * ($barLength - $filled)
    Write-Host "`r  Hermes 全局安装进度: [$bar] $Percent%   |   $Status" -NoNewline -ForegroundColor Cyan
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "     Hermes Agent Windows 一键安装脚本 v6.1" -ForegroundColor Yellow
Write-Host "           全局固定顶部进度条" -ForegroundColor Gray
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "全局进度条将固定在顶部持续更新，请注意上方`n" -ForegroundColor Gray

Update-TopProgress 0 "准备开始安装..."

Update-TopProgress 10 "正在清理旧文件..."
Write-Host "`n[1/5] 正在清理旧残留..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\hermes" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "$env:USERPROFILE\.hermes" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "C:\hermes-agent-old" -ErrorAction SilentlyContinue
Write-Host "清理完成" -ForegroundColor Green

Update-TopProgress 25 "正在创建安装目录 C:\hermes-agent ..."
$InstallPath = "C:\hermes-agent"
if (Test-Path $InstallPath) { Remove-Item -Recurse -Force $InstallPath }
New-Item -ItemType Directory -Force -Path $InstallPath | Out-Null
Set-Location $InstallPath
Write-Host "目录创建完成" -ForegroundColor Green

Update-TopProgress 45 "正在下载 Hermes Agent 主程序..."
Write-Host "`n[3/5] 正在从 GitHub 下载 (约130MB)..." -ForegroundColor Yellow
git clone https://github.com/NousResearch/hermes-agent.git . --depth=1
if ($LASTEXITCODE -eq 0) {
    Write-Host "下载成功" -ForegroundColor Green
} else {
    Write-Host "下载失败，请检查网络" -ForegroundColor Red
    pause; exit 1
}

Update-TopProgress 70 "正在准备 uv 包管理器..."
Write-Host "`n[4/5] 正在检查并安装 uv..." -ForegroundColor Yellow
if (-not (Get-Command uv -ErrorAction SilentlyContinue)) {
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex" | Out-Null
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}
Write-Host "uv 准备完成" -ForegroundColor Green

Update-TopProgress 85 "正在安装所有依赖包（最耗时）..."
Write-Host "`n[5/5] 正在安装所有依赖包，请耐心等待 3-8 分钟..." -ForegroundColor Yellow
Write-Host "uv 正在下载和安装，请观察下方输出..." -ForegroundColor Gray
Write-Host ""

uv sync

if ($LASTEXITCODE -eq 0) {
    Update-TopProgress 98 "正在完成最后安装..."
    uv pip install -e .
    Update-TopProgress 100 "安装全部完成！"
    Write-Host "`n`nHermes Agent 安装成功完成！" -ForegroundColor Green
} else {
    Write-Host "`n安装失败！" -ForegroundColor Red
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "安装路径: C:\hermes-agent" -ForegroundColor Cyan
Write-Host ""
Write-Host "常用命令：" -ForegroundColor Yellow
Write-Host "   cd C:\hermes-agent && uv run hermes setup" -ForegroundColor White
Write-Host ""
Write-Host "安装完成！欢迎使用 Hermes Agent。" -ForegroundColor Green
Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
