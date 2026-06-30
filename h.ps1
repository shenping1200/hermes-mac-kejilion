# Hermes Agent Windows Manager short launcher
$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
irm https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/hermes-manager-windows.ps1 | iex
