# Hermes Agent Windows Manager - ASCII source, UTF-8 UI decoded at runtime
$InstallPath = "C:\hermes-agent"
$ErrorActionPreference = "Continue"
try {
    $u8 = [System.Text.UTF8Encoding]::new($false)
    [Console]::InputEncoding = $u8
    [Console]::OutputEncoding = $u8
    $OutputEncoding = $u8
    $env:PYTHONIOENCODING = "utf-8"
    chcp 65001 | Out-Null
} catch {}
function U([string]$b) { [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($b)) }
$S = @{
    press_enter = "5oyJ5Zue6L2m6ZSu6L+U5Zue6I+c5Y2V"
    not_found = "5pyq5om+5YiwIEhlcm1lc+OAguivt+WFiOmAieaLqSAxIOWuieijhSBIZXJtZXMgQWdlbnTjgII="
    no_python = "5pyq5om+5YiwIFB5dGhvbi91du+8jOaXoOazleWkhOeQhiBIZXJtZXMg6YWN572u44CC"
    not_installed = "5pyq5a6J6KOF"
    version_failed = "5bey5a6J6KOF77yI54mI5pys6K+75Y+W5aSx6LSl77yJ"
    up_to_date = "ICDlvZPliY3lt7LmmK/mnIDmlrA="
    new_version = "ICDmnInmlrDniYjmnKw="
    update_available = "ICDlj6/mo4Dmn6Xmm7TmlrA="
    running = "6L+Q6KGM5Lit"
    stopped = "5bey5YGc5q2i"
    installing = "5byA5aeL5a6J6KOFIEhlcm1lcyBBZ2VudC4uLg=="
    install_first = "6K+35YWI5a6J6KOFIEhlcm1lc+OAgg=="
    starting = "5q2j5Zyo5ZCv5YqoIEdhdGV3YXkuLi4="
    stopping = "5q2j5Zyo5YGc5q2iIEdhdGV3YXkuLi4="
    sync_fail = "5peg5rOV5LuOIC9tb2RlbHMg6Ieq5Yqo5ZCM5q2l77ya"
    api_title = "ICAgICAgQVBJIOS4juaooeWei+euoeeQhg=="
    active_model = "5b2T5YmN5r+A5rS75qih5Z6LOiA="
    api_list = "5bey6YWN572uIEFQSSDliJfooag6"
    none = "ICAo5pqC5peg6YWN572uKQ=="
    models_count = "5Liq5qih5Z6L"
    latency = "5bu26L+f"
    api_1 = "MS4g5YiH5o2i5qih5Z6LICjluKbphY3nva7liJfooagp"
    api_2 = "Mi4g5re75YqgIEFQSSDkvpvlupTllYYgKOiHquWKqOWQjOatpSAvbW9kZWxzKQ=="
    api_3 = "My4g5ZCM5q2lIEFQSSDkvpvlupTllYbmqKHlnovliJfooag="
    api_4 = "NC4g5Yig6ZmkIEFQSSDkvpvlupTllYY="
    api_5 = "NS4g5omT5byAIEhlcm1lcyDljp/nlJ/mqKHlnovpgInmi6nlmag="
    back = "MC4g6L+U5Zue5Li76I+c5Y2V"
    select_num = "6YCJ5oup5bqP5Y+3"
    no_api = "5pegIEFQSSDphY3nva7vvIzor7flhYjmt7vliqDkvpvlupTllYbjgII="
    enter_model = "6K+36L6T5YWl5qih5Z6L57yW5Y+35oiW5a6M5pW05ZCN56ewICgwIOi/lOWbnik="
    bad_num = "5bqP5Y+35peg5pWI44CC"
    confirm_switch_prefix = "56Gu6K6k5YiH5o2i5YiwIFs="
    confirm_switch_suffix = "XSA/ICh5L04p"
    switched = "5bey5YiH5o2i5qih5Z6L44CC5q2j5Zyo6YeN5ZCvIEdhdGV3YXkuLi4="
    provider_name = "5L6b5bqU5ZWG5ZCN56ew"
    name_url_required = "5ZCN56ew5ZKMIEJhc2UgVVJMIOS4jeiDveS4uuepuuOAgg=="
    auto_found = "6Ieq5Yqo5Y+R546w"
    default_model = "6buY6K6k5qih5Z6LIElEL+WQjeensA=="
    model_required = "5qih5Z6L5LiN6IO95Li656m644CC"
    saved_provider = "5L6b5bqU5ZWG5bey5YaZ5YWlIA=="
    no_sync = "5pqC5peg5L6b5bqU5ZWG5Y+v5ZCM5q2l44CC"
    enter_provider_num = "6YCJ5oup5L6b5bqU5ZWG57yW5Y+3ICgwIOi/lOWbnik="
    enter_number = "6K+36L6T5YWl57yW5Y+344CC"
    synced = "5bey5ZCM5q2l"
    no_delete = "5pqC5peg5L6b5bqU5ZWG5Y+v5Yig6Zmk44CC"
    delete_provider = "6YCJ5oup6KaB5Yig6Zmk55qE5L6b5bqU5ZWG57yW5Y+35oiW5ZCN56ewICgwIOi/lOWbnik="
    confirm_delete_prefix = "56Gu6K6k5Yig6ZmkIFs="
    confirm_delete_suffix = "XSDlj4rlhbbmqKHlnos/ICh5L04p"
    deleted = "5bey5Yig6Zmk44CC"
    bad_input = "6L6T5YWl6ZSZ6K+v77yM6K+36YeN5paw6YCJ5oup44CC"
    uninstall_confirm = "56Gu5a6a6KaB5Y246L29IEhlcm1lcyDlkJfvvJ/lj6/pgInmi6nmuIXnkIbphY3nva7mlbDmja7jgIIoeS9OKQ=="
    cancelled = "5bey5Y+W5raI44CC"
    delete_install = "5Yig6Zmk5a6J6KOF55uu5b2VIA=="
    delete_data_prefix = "5piv5ZCm5Yig6Zmk55So5oi35pWw5o2uIA=="
    uninstall_done = "5Y246L295rWB56iL5a6M5oiQ44CC"
    main_title = "ICAgICAgICAgICBIZXJtZXMgQWdlbnQg57uI56uv566h55CG5bel5YW3ICAgICAgICAgICAgIA=="
    status = "IOi/kOihjOeKtuaAgSA6IA=="
    version = "IOW9k+WJjeeJiOacrCA6IA=="
    main_1 = "MS4g5a6J6KOFIEhlcm1lcyBBZ2VudA=="
    main_2 = "Mi4g5ZCv5YqoIEdhdGV3YXkgKOa2iOaBr+e9keWFsy/lkI7lj7DmnI3liqEp"
    main_3 = "My4g5YGc5q2iIEdhdGV3YXk="
    main_4 = "NC4gQVBJL+aooeWei+euoeeQhiAo5L6b5bqU5ZWG5LiO5qih5Z6L5YiH5o2iKQ=="
    main_5 = "NS4g5ZCv5Yqo57uI56uv5a+56K+dVUkgKEludGVyYWN0aXZlIENoYXQp"
    main_6 = "Ni4g6L+Q6KGM5Yid5aeL5YyW6YWN572u5ZCR5a+8IChTZXR1cCBXaXphcmQp"
    main_7 = "Ny4g5qOA5p+l5bm25pu05pawIEhlcm1lcw=="
    main_8 = "OC4g5Y246L29IEhlcm1lcw=="
    main_0 = "MC4g6YCA5Ye6"
    select_main = "IOivt+i+k+WFpeaVsOWtlyBbMC04XQ=="
    enter_chat = "5Y2z5bCG6L+b5YWl5Lqk5LqS5byP57uI56uv77yM6L6T5YWlIC9leGl0IOWPr+mAgOWHuui/lOWbnuOAgg=="
    bye = "5oSf6LCi5L2/55So77yM5YaN6KeB77yB"
}
$HermesDataPath = Join-Path $env:LOCALAPPDATA "hermes"
$HermesConfigPath = Join-Path $HermesDataPath "config.yaml"
$InstallerUrl = "https://raw.githubusercontent.com/shenping1200/hermes-mac-kejilion/main/install-hermes-windows.ps1"
function W([string]$k) { U $S[$k] }
function Write-Info($Text) { Write-Host $Text -ForegroundColor Cyan }
function Write-Ok($Text) { Write-Host $Text -ForegroundColor Green }
function Write-Warn($Text) { Write-Host $Text -ForegroundColor Yellow }
function Write-Bad($Text) { Write-Host $Text -ForegroundColor Red }
function Pause-Menu { Write-Host ""; [void](Read-Host (W press_enter)) }
function Test-HermesInstalled { (Test-Path (Join-Path $InstallPath "pyproject.toml")) -or [bool](Get-Command hermes -ErrorAction SilentlyContinue) }
function Invoke-Hermes {
    param([Parameter(ValueFromRemainingArguments = $true)][string[]]$Arguments)
    if (Test-Path $InstallPath) { Push-Location $InstallPath; try { if (Get-Command uv -ErrorAction SilentlyContinue) { & uv run hermes @Arguments; return $LASTEXITCODE }; $e=Join-Path $InstallPath ".venv\Scripts\hermes.exe"; if(Test-Path $e){& $e @Arguments; return $LASTEXITCODE} } finally { Pop-Location } }
    if(Get-Command hermes -ErrorAction SilentlyContinue){ & hermes @Arguments; return $LASTEXITCODE }
    Write-Bad (W not_found); return 127
}
function Invoke-HermesCapture {
    param([string[]]$Arguments)
    if(Test-Path $InstallPath){ Push-Location $InstallPath; try { if(Get-Command uv -ErrorAction SilentlyContinue){ return (& uv run hermes @Arguments 2>$null) }; $e=Join-Path $InstallPath ".venv\Scripts\hermes.exe"; if(Test-Path $e){ return (& $e @Arguments 2>$null) } } finally { Pop-Location } }
    if(Get-Command hermes -ErrorAction SilentlyContinue){ return (& hermes @Arguments 2>$null) }
    return @()
}
function Invoke-HermesPython {
    param([string]$Code,[string[]]$Arguments=@())
    $tmp = Join-Path $env:TEMP ("hermes-manager-" + [guid]::NewGuid().ToString() + ".py")
    [System.IO.File]::WriteAllText($tmp, $Code, [System.Text.UTF8Encoding]::new($false))
    try {
        if(Test-Path $InstallPath){
            Push-Location $InstallPath
            try {
                if(Get-Command uv -ErrorAction SilentlyContinue){ return ((& uv run python $tmp @Arguments 2>$null) -join "`n") }
                $p=Join-Path $InstallPath ".venv\Scripts\python.exe"
                if(Test-Path $p){ return ((& $p $tmp @Arguments 2>$null) -join "`n") }
            } finally { Pop-Location }
        }
        if(Get-Command python -ErrorAction SilentlyContinue){ return ((& python $tmp @Arguments 2>$null) -join "`n") }
        throw (W no_python)
    } finally {
        Remove-Item -LiteralPath $tmp -Force -ErrorAction SilentlyContinue
    }
}
function Get-HermesVersionText { if(-not(Test-HermesInstalled)){return (W not_installed)}; $o=Invoke-HermesCapture -Arguments @("--version"); if($o -and $o.Count -gt 0){return [string]$o[0]}; return (W version_failed) }
function Get-UpdateNotice { if(-not(Test-HermesInstalled)){return ""}; $o=Invoke-HermesCapture -Arguments @("update","--check"); $t=($o -join " "); if($t -match "Up to date|Already up to date|Already current"){return (W up_to_date)}; if($t -match "v?\d+\.\d+\.\d+"){return "$(W new_version) $($Matches[0])"}; if($t.Trim()){return (W update_available)}; return "" }
function Get-GatewayStatus {
    $sf=Join-Path $HermesDataPath "gateway_state.json"; $pf=Join-Path $HermesDataPath "gateway.pid"
    try{ if(Test-Path $sf){ $st=Get-Content $sf -Raw | ConvertFrom-Json; if($st.pid -and (Get-Process -Id ([int]$st.pid) -ErrorAction SilentlyContinue)){return "$(W running)$(Get-UpdateNotice)"} }; if(Test-Path $pf){ $ps=Get-Content $pf -Raw | ConvertFrom-Json; if($ps.pid -and (Get-Process -Id ([int]$ps.pid) -ErrorAction SilentlyContinue)){return "$(W running)$(Get-UpdateNotice)"} } }catch{}
    return "$(W stopped)$(Get-UpdateNotice)"
}
function Install-HermesAgent { Write-Warn (W installing); powershell -ExecutionPolicy Bypass -NoProfile -Command "irm $InstallerUrl | iex"; Invoke-Hermes gateway install | Out-Host; Invoke-Hermes gateway start | Out-Host }
function Start-HermesGateway { if(-not(Test-HermesInstalled)){Write-Bad(W install_first);return}; Write-Warn(W starting); Invoke-Hermes gateway stop|Out-Null; Invoke-Hermes gateway start|Out-Host }
function Stop-HermesGateway { if(-not(Test-HermesInstalled)){Write-Bad(W install_first);return}; Write-Warn(W stopping); Invoke-Hermes gateway stop|Out-Host }

function Test-RealConsole {
    try { $null = [Console]::WindowWidth; return $true } catch { return $false }
}
function Start-HermesInteractive {
    param([string[]]$HermesArgs=@())
    if (-not (Test-HermesInstalled)) { Write-Bad (W install_first); return }
    if (Test-RealConsole) {
        Push-Location $InstallPath
        try {
            if(Get-Command uv -ErrorAction SilentlyContinue){ & uv run hermes @HermesArgs }
            else { & (Join-Path $InstallPath ".venv\Scripts\hermes.exe") @HermesArgs }
        } finally { Pop-Location }
    } else {
        $suffix = if($HermesArgs.Count -gt 0){ ' ' + ($HermesArgs -join ' ') } else { '' }
        $command = 'Set-Location "' + $InstallPath + '"; uv run hermes' + $suffix
        Start-Process -FilePath "powershell.exe" -ArgumentList @("-NoExit", "-ExecutionPolicy", "Bypass", "-Command", $command)
    }
}
function Start-HermesChatConsole { Start-HermesInteractive }
function Start-HermesModelConsole { Start-HermesInteractive -HermesArgs @("model") }

$ConfigToolCode = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("CmltcG9ydCBqc29uLCBzeXMsIHRpbWUsIHRocmVhZGluZywgdXJsbGliLnJlcXVlc3QsIHVybGxpYi5lcnJvciwgc2h1dGlsLCBkYXRldGltZQpmcm9tIHBhdGhsaWIgaW1wb3J0IFBhdGgKdHJ5OgogICAgaW1wb3J0IHlhbWwKZXhjZXB0IEV4Y2VwdGlvbiBhcyBleGM6CiAgICBwcmludChqc29uLmR1bXBzKHsiZXJyb3IiOiJQeVlBTUwgdW5hdmFpbGFibGU6ICVzIiAlIGV4Y30sIGVuc3VyZV9hc2NpaT1UcnVlKSk7IHJhaXNlIFN5c3RlbUV4aXQoMSkKcGF0aD1QYXRoKHN5cy5hcmd2WzFdKTsgYWN0aW9uPXN5cy5hcmd2WzJdCmRlZiBsb2FkKCk6CiAgICBpZiBub3QgcGF0aC5leGlzdHMoKTogcmV0dXJuIHt9CiAgICB3aXRoIHBhdGgub3BlbigiciIsZW5jb2Rpbmc9InV0Zi04IikgYXMgZjogcmV0dXJuIHlhbWwuc2FmZV9sb2FkKGYpIG9yIHt9CmRlZiBiYWNrdXBfZmlsZSgpOgogICAgaWYgcGF0aC5leGlzdHMoKToKICAgICAgICB0cz1kYXRldGltZS5kYXRldGltZS5ub3coKS5zdHJmdGltZSgiJVklbSVkJUglTSVTIikKICAgICAgICBzaHV0aWwuY29weTIocGF0aCxwYXRoLndpdGhfc3VmZml4KHBhdGguc3VmZml4KyIuYmFrLSIrdHMpKQpkZWYgc2F2ZShkYXRhKToKICAgIHBhdGgucGFyZW50Lm1rZGlyKHBhcmVudHM9VHJ1ZSxleGlzdF9vaz1UcnVlKTsgYmFja3VwX2ZpbGUoKQogICAgd2l0aCBwYXRoLm9wZW4oInciLGVuY29kaW5nPSJ1dGYtOCIpIGFzIGY6IHlhbWwuc2FmZV9kdW1wKGRhdGEsZixhbGxvd191bmljb2RlPVRydWUsc29ydF9rZXlzPUZhbHNlKQpkZWYgc2x1ZyhuYW1lKTogcmV0dXJuICJjdXN0b206IitzdHIobmFtZSkuc3RyaXAoKS5sb3dlcigpLnJlcGxhY2UoIiAiLCItIikKZGVmIHByb3ZpZGVycyhkYXRhKToKICAgIHBzPWRhdGEuZ2V0KCJjdXN0b21fcHJvdmlkZXJzIixbXSkKICAgIHJldHVybiBwcyBpZiBpc2luc3RhbmNlKHBzLGxpc3QpIGVsc2UgW10KZGVmIG1vZGVsX21hcChlbnRyeSk6CiAgICByYXc9ZW50cnkuZ2V0KCJtb2RlbHMiKSBpZiBpc2luc3RhbmNlKGVudHJ5LGRpY3QpIGVsc2UgTm9uZQogICAgaWYgaXNpbnN0YW5jZShyYXcsZGljdCk6IHJldHVybiByYXcKICAgIGlmIGlzaW5zdGFuY2UocmF3LGxpc3QpOiByZXR1cm4ge3N0cih4KTp7fSBmb3IgeCBpbiByYXcgaWYgc3RyKHgpLnN0cmlwKCl9CiAgICBtb2RlbD1lbnRyeS5nZXQoIm1vZGVsIikgaWYgaXNpbnN0YW5jZShlbnRyeSxkaWN0KSBlbHNlIE5vbmUKICAgIHJldHVybiB7c3RyKG1vZGVsKTp7fX0gaWYgbW9kZWwgZWxzZSB7fQpkZWYgZ3JvdXBfbmFtZShuYW1lKToKICAgIHM9c3RyKG5hbWUgb3IgIiIpLnN0cmlwKCkKICAgIHJldHVybiBzLnNwbGl0KCIvIiwxKVswXSBpZiAiLyIgaW4gcyBlbHNlIHMKZGVmIG5vcm1hbGl6ZV9ncm91cHMoZGF0YSk6CiAgICBncm91cHM9e30KICAgIGZvciBwIGluIHByb3ZpZGVycyhkYXRhKToKICAgICAgICBpZiBub3QgaXNpbnN0YW5jZShwLGRpY3QpOiBjb250aW51ZQogICAgICAgIGc9Z3JvdXBfbmFtZShwLmdldCgibmFtZSIpKQogICAgICAgIGlmIG5vdCBnOiBjb250aW51ZQogICAgICAgIGVudHJ5PWdyb3Vwcy5zZXRkZWZhdWx0KGcseyJuYW1lIjpnLCJiYXNlX3VybCI6cC5nZXQoImJhc2VfdXJsIiwiIikgb3IgcC5nZXQoInVybCIsIiIpIG9yIHAuZ2V0KCJhcGkiLCIiKSwiYXBpX2tleSI6cC5nZXQoImFwaV9rZXkiLCIiKSwibW9kZWwiOiIiLCJtb2RlbHMiOnt9fSkKICAgICAgICBpZiBwLmdldCgiYmFzZV91cmwiKSBvciBwLmdldCgidXJsIikgb3IgcC5nZXQoImFwaSIpOgogICAgICAgICAgICBlbnRyeVsiYmFzZV91cmwiXT1wLmdldCgiYmFzZV91cmwiLCIiKSBvciBwLmdldCgidXJsIiwiIikgb3IgcC5nZXQoImFwaSIsIiIpCiAgICAgICAgaWYgcC5nZXQoImFwaV9rZXkiKTogZW50cnlbImFwaV9rZXkiXT1wLmdldCgiYXBpX2tleSIsIiIpCiAgICAgICAgZm9yIG1pZCxtZXRhIGluIG1vZGVsX21hcChwKS5pdGVtcygpOgogICAgICAgICAgICBpZiAiLyIgaW4gc3RyKHAuZ2V0KCJuYW1lIiwiIikpIGFuZCBtaWQ9PXN0cihwLmdldCgibW9kZWwiLCIiKSk6CiAgICAgICAgICAgICAgICBwYXNzCiAgICAgICAgICAgIGVudHJ5WyJtb2RlbHMiXS5zZXRkZWZhdWx0KHN0cihtaWQpLCBtZXRhIGlmIGlzaW5zdGFuY2UobWV0YSxkaWN0KSBlbHNlIHt9KQogICAgICAgIGlmIHAuZ2V0KCJtb2RlbCIpOgogICAgICAgICAgICBlbnRyeVsibW9kZWwiXT1zdHIocC5nZXQoIm1vZGVsIikpCiAgICAgICAgICAgIGVudHJ5WyJtb2RlbHMiXS5zZXRkZWZhdWx0KHN0cihwLmdldCgibW9kZWwiKSkse30pCiAgICByZXR1cm4gZ3JvdXBzCmRlZiBsaXN0X21vZGVscyhkYXRhKToKICAgIG91dD1bXQogICAgZm9yIGcsZW50cnkgaW4gbm9ybWFsaXplX2dyb3VwcyhkYXRhKS5pdGVtcygpOgogICAgICAgIGZvciBtaWQgaW4gZW50cnkuZ2V0KCJtb2RlbHMiLHt9KS5rZXlzKCk6CiAgICAgICAgICAgIG91dC5hcHBlbmQoeyJwcm92aWRlciI6ZywibmFtZSI6ZysiLyIrc3RyKG1pZCksIm1vZGVsIjpzdHIobWlkKSwiYmFzZV91cmwiOmVudHJ5LmdldCgiYmFzZV91cmwiLCIiKSwiYXBpX2tleSI6ZW50cnkuZ2V0KCJhcGlfa2V5IiwiIiksInByb3ZpZGVyX3NsdWciOnNsdWcoZyl9KQogICAgcmV0dXJuIG91dApkYXRhPWxvYWQoKQppZiBhY3Rpb249PSJpbmZvIjoKICAgIG09ZGF0YS5nZXQoIm1vZGVsIix7fSkgaWYgaXNpbnN0YW5jZShkYXRhLmdldCgibW9kZWwiKSxkaWN0KSBlbHNlIHt9CiAgICBwcmludChqc29uLmR1bXBzKHsibW9kZWwiOm0uZ2V0KCJkZWZhdWx0Iiwibm90IHNldCIpLCJwcm92aWRlciI6bS5nZXQoInByb3ZpZGVyIiwiLSIpfSxlbnN1cmVfYXNjaWk9VHJ1ZSkpCmVsaWYgYWN0aW9uPT0ibGlzdCI6CiAgICBwcmludChqc29uLmR1bXBzKGxpc3RfbW9kZWxzKGRhdGEpLGVuc3VyZV9hc2NpaT1UcnVlKSkKZWxpZiBhY3Rpb249PSJncm91cHMiOgogICAgZ3JvdXBzPW5vcm1hbGl6ZV9ncm91cHMoZGF0YSk7IHJlc3VsdHM9e30KICAgIGRlZiBwcm9iZShncm91cCx1cmwsa2V5KToKICAgICAgICBpZiBub3Qgc3RyKHVybCkuc3RhcnRzd2l0aCgoImh0dHA6Ly8iLCJodHRwczovLyIpKTogcmVzdWx0c1tncm91cF09Ik4vQSI7IHJldHVybgogICAgICAgIHN0YXJ0PXRpbWUudGltZSgpCiAgICAgICAgdHJ5OgogICAgICAgICAgICByZXE9dXJsbGliLnJlcXVlc3QuUmVxdWVzdChzdHIodXJsKS5yc3RyaXAoIi8iKSsiL21vZGVscyIsaGVhZGVycz17IkF1dGhvcml6YXRpb24iOiJCZWFyZXIgIitzdHIoa2V5KX0gaWYga2V5IGVsc2Uge30pCiAgICAgICAgICAgIHdpdGggdXJsbGliLnJlcXVlc3QudXJsb3BlbihyZXEsdGltZW91dD0yKSBhcyByZXNwOiByZXNwLnJlYWQoNjQpCiAgICAgICAgICAgIHJlc3VsdHNbZ3JvdXBdPSIlZG1zIiVpbnQoKHRpbWUudGltZSgpLXN0YXJ0KSoxMDAwKQogICAgICAgIGV4Y2VwdCB1cmxsaWIuZXJyb3IuSFRUUEVycm9yOiByZXN1bHRzW2dyb3VwXT0iJWRtcyIlaW50KCh0aW1lLnRpbWUoKS1zdGFydCkqMTAwMCkKICAgICAgICBleGNlcHQgRXhjZXB0aW9uOiByZXN1bHRzW2dyb3VwXT0idGltZW91dCIKICAgIHRocmVhZHM9W10KICAgIGZvciBnLGUgaW4gZ3JvdXBzLml0ZW1zKCk6CiAgICAgICAgdD10aHJlYWRpbmcuVGhyZWFkKHRhcmdldD1wcm9iZSxhcmdzPShnLGUuZ2V0KCJiYXNlX3VybCIsIiIpLGUuZ2V0KCJhcGlfa2V5IiwiIikpKTsgdC5zdGFydCgpOyB0aHJlYWRzLmFwcGVuZCh0KQogICAgZm9yIHQgaW4gdGhyZWFkczogdC5qb2luKCkKICAgIG91dD1bXQogICAgZm9yIGcsZSBpbiBncm91cHMuaXRlbXMoKTogb3V0LmFwcGVuZCh7Im5hbWUiOmcsImJhc2VfdXJsIjplLmdldCgiYmFzZV91cmwiLCIiKSwiY291bnQiOmxlbihlLmdldCgibW9kZWxzIix7fSkpLCJsYXRlbmN5IjpyZXN1bHRzLmdldChnLCJOL0EiKX0pCiAgICBwcmludChqc29uLmR1bXBzKG91dCxlbnN1cmVfYXNjaWk9VHJ1ZSkpCmVsaWYgYWN0aW9uPT0ic3dpdGNoIjoKICAgIHNlbGVjdGVkPXN5cy5hcmd2WzNdOyBtYXRjaD1Ob25lCiAgICBmb3IgaXRlbSBpbiBsaXN0X21vZGVscyhkYXRhKToKICAgICAgICBpZiBzZWxlY3RlZCBpbiB7aXRlbVsibmFtZSJdLGl0ZW1bIm1vZGVsIl19OiBtYXRjaD1pdGVtOyBicmVhawogICAgaWYgbm90IG1hdGNoOiBwcmludChqc29uLmR1bXBzKHsib2siOkZhbHNlLCJlcnJvciI6Im1vZGVsIG5vdCBmb3VuZCJ9LGVuc3VyZV9hc2NpaT1UcnVlKSk7IHJhaXNlIFN5c3RlbUV4aXQoMSkKICAgICMgUHV0IGNvbnRleHRfbGVuZ3RoIGF0IHRvcC1sZXZlbCBtb2RlbCBpZiB0aGUgc2VsZWN0ZWQgbW9kZWwgaGFzIG1ldGFkYXRhLgogICAgbWV0YT17fQogICAgZm9yIGcsZSBpbiBub3JtYWxpemVfZ3JvdXBzKGRhdGEpLml0ZW1zKCk6CiAgICAgICAgaWYgZz09bWF0Y2hbInByb3ZpZGVyIl06IG1ldGE9ZS5nZXQoIm1vZGVscyIse30pLmdldChtYXRjaFsibW9kZWwiXSx7fSkgb3Ige30KICAgIG1vZGVsPXsiZGVmYXVsdCI6bWF0Y2hbIm1vZGVsIl0sInByb3ZpZGVyIjoiY3VzdG9tIiwiYmFzZV91cmwiOm1hdGNoLmdldCgiYmFzZV91cmwiLCIiKSwiYXBpX2tleSI6bWF0Y2guZ2V0KCJhcGlfa2V5IiwiIil9CiAgICBpZiBpc2luc3RhbmNlKG1ldGEsZGljdCkgYW5kIG1ldGEuZ2V0KCJjb250ZXh0X2xlbmd0aCIpOiBtb2RlbFsiY29udGV4dF9sZW5ndGgiXT1tZXRhLmdldCgiY29udGV4dF9sZW5ndGgiKQogICAgZGF0YVsibW9kZWwiXT1tb2RlbAogICAgc2F2ZShkYXRhKTsgcHJpbnQoanNvbi5kdW1wcyh7Im9rIjpUcnVlLCJwcm92aWRlciI6ImN1c3RvbSIsIm1vZGVsIjptYXRjaFsibW9kZWwiXX0sZW5zdXJlX2FzY2lpPVRydWUpKQplbGlmIGFjdGlvbj09ImFkZCI6CiAgICBuYW1lLHVybCxrZXksbW9kZWw9c3lzLmFyZ3ZbMzo3XQogICAgZ3JvdXBzPW5vcm1hbGl6ZV9ncm91cHMoZGF0YSk7IGc9Z3JvdXBfbmFtZShuYW1lKTsgZW50cnk9Z3JvdXBzLnNldGRlZmF1bHQoZyx7Im5hbWUiOmcsImJhc2VfdXJsIjp1cmwsImFwaV9rZXkiOmtleSwibW9kZWwiOm1vZGVsLCJtb2RlbHMiOnt9fSkKICAgIGVudHJ5LnVwZGF0ZSh7ImJhc2VfdXJsIjp1cmwsImFwaV9rZXkiOmtleSwibW9kZWwiOm1vZGVsfSk7IGVudHJ5WyJtb2RlbHMiXS5zZXRkZWZhdWx0KG1vZGVsLHt9KQogICAgZGF0YVsiY3VzdG9tX3Byb3ZpZGVycyJdPVtlbnRyeSBmb3IgXyxlbnRyeSBpbiBzb3J0ZWQoZ3JvdXBzLml0ZW1zKCkpXQogICAgc2F2ZShkYXRhKTsgcHJpbnQoanNvbi5kdW1wcyh7Im9rIjpUcnVlfSxlbnN1cmVfYXNjaWk9VHJ1ZSkpCmVsaWYgYWN0aW9uPT0iYnVsa19hZGQiOgogICAgYmFzZSx1cmwsa2V5LG1vZGVsc19qc29uPXN5cy5hcmd2WzM6N10KICAgIHRyeTogcmF3X21vZGVscz1qc29uLmxvYWRzKG1vZGVsc19qc29uKQogICAgZXhjZXB0IEV4Y2VwdGlvbjogcmF3X21vZGVscz1beC5zdHJpcCgpLnN0cmlwKCJcIiciKSBmb3IgeCBpbiBtb2RlbHNfanNvbi5zdHJpcCgpLnN0cmlwKCJbXSIpLnNwbGl0KCIsIikgaWYgeC5zdHJpcCgpXQogICAgaWYgaXNpbnN0YW5jZShyYXdfbW9kZWxzLHN0cik6IHJhd19tb2RlbHM9W3Jhd19tb2RlbHNdCiAgICBtb2RlbF9pZHM9W3N0cih4KSBmb3IgeCBpbiByYXdfbW9kZWxzIGlmIHN0cih4KS5zdHJpcCgpXQogICAgZ3JvdXBzPW5vcm1hbGl6ZV9ncm91cHMoZGF0YSk7IGc9Z3JvdXBfbmFtZShiYXNlKQogICAgZW50cnk9Z3JvdXBzLnNldGRlZmF1bHQoZyx7Im5hbWUiOmcsImJhc2VfdXJsIjp1cmwsImFwaV9rZXkiOmtleSwibW9kZWwiOiIiLCJtb2RlbHMiOnt9fSkKICAgIG9sZF9tb2RlbHM9ZW50cnkuc2V0ZGVmYXVsdCgibW9kZWxzIix7fSkKICAgIG1lcmdlZD17fQogICAgZm9yIG1pZCBpbiBtb2RlbF9pZHM6CiAgICAgICAgcHJldj1vbGRfbW9kZWxzLmdldChtaWQse30pCiAgICAgICAgbWVyZ2VkW21pZF09cHJldiBpZiBpc2luc3RhbmNlKHByZXYsZGljdCkgZWxzZSB7fQogICAgZW50cnlbImJhc2VfdXJsIl09dXJsOyBlbnRyeVsiYXBpX2tleSJdPWtleTsgZW50cnlbIm1vZGVscyJdPW1lcmdlZAogICAgaWYgbm90IGVudHJ5LmdldCgibW9kZWwiKSBvciBlbnRyeVsibW9kZWwiXSBub3QgaW4gbWVyZ2VkOiBlbnRyeVsibW9kZWwiXT1tb2RlbF9pZHNbMF0gaWYgbW9kZWxfaWRzIGVsc2UgIiIKICAgIGRhdGFbImN1c3RvbV9wcm92aWRlcnMiXT1bZW50cnkgZm9yIF8sZW50cnkgaW4gc29ydGVkKGdyb3Vwcy5pdGVtcygpKV0KICAgIHNhdmUoZGF0YSk7IHByaW50KGpzb24uZHVtcHMoeyJvayI6VHJ1ZSwiY291bnQiOmxlbihtb2RlbF9pZHMpfSxlbnN1cmVfYXNjaWk9VHJ1ZSkpCmVsaWYgYWN0aW9uPT0iZGVsZXRlIjoKICAgIG5hbWU9c3lzLmFyZ3ZbM107IGc9Z3JvdXBfbmFtZShuYW1lKTsgZ3JvdXBzPW5vcm1hbGl6ZV9ncm91cHMoZGF0YSk7IGdyb3Vwcy5wb3AoZyxOb25lKQogICAgZGF0YVsiY3VzdG9tX3Byb3ZpZGVycyJdPVtlbnRyeSBmb3IgXyxlbnRyeSBpbiBzb3J0ZWQoZ3JvdXBzLml0ZW1zKCkpXQogICAgc2F2ZShkYXRhKTsgcHJpbnQoanNvbi5kdW1wcyh7Im9rIjpUcnVlfSxlbnN1cmVfYXNjaWk9VHJ1ZSkpCg=="))
function Invoke-ConfigTool {
    param([string]$Action,[string[]]$Arguments=@())
    $args=@($HermesConfigPath,$Action)+$Arguments
    $json=Invoke-HermesPython -Code $ConfigToolCode -Arguments $args
    if([string]::IsNullOrWhiteSpace($json)){return $null}
    $result=$json|ConvertFrom-Json
    if($result -is [System.Array]){foreach($item in $result){Write-Output $item}}else{Write-Output $result}
}
function Get-ProviderModels {
    param([string]$BaseUrl,[string]$ApiKey)
    try{ $uri=($BaseUrl.TrimEnd("/"))+"/models"; $req=[Net.HttpWebRequest]::Create($uri); $req.Method="GET"; $req.Timeout=15000; $req.UserAgent="Hermes-Manager-Windows/1.0"; if($ApiKey){$req.Headers["Authorization"]="Bearer $ApiKey"}; $resp=$req.GetResponse(); try{$stream=$resp.GetResponseStream(); $reader=[IO.StreamReader]::new($stream,[Text.Encoding]::UTF8,$true); $json=$reader.ReadToEnd()}finally{if($reader){$reader.Dispose()};if($resp){$resp.Dispose()}}; $payload=$json|ConvertFrom-Json; $models=@(); if($payload.data){foreach($item in $payload.data){if($item.id){$models+=[string]$item.id}}}; return @($models|Sort-Object -Unique)}catch{Write-Warn "$(W sync_fail)$($_.Exception.Message)";return @()}
}
function Show-ApiManagementMenu {
    if(-not(Test-HermesInstalled)){Write-Bad(W install_first);return}
    while($true){
        Clear-Host; $info=Invoke-ConfigTool -Action "info"; $groups=@(Invoke-ConfigTool -Action "groups")
        Write-Info "======================================="; Write-Host (W api_title) -ForegroundColor Magenta; Write-Info "======================================="
        Write-Host (W active_model) -NoNewline; Write-Ok $info.model; Write-Host "---------------------------------------"; Write-Host (W api_list)
        if(-not $groups -or $groups.Count -eq 0){Write-Warn(W none)}else{foreach($g in $groups){Write-Host ("  * [{0}] ({1} $(W models_count)) | $(W latency): {2} | {3}" -f $g.name,$g.count,$g.latency,$g.base_url)}}
        Write-Host "---------------------------------------"; Write-Host (W api_1); Write-Host (W api_2); Write-Host (W api_3); Write-Host (W api_4); Write-Host (W api_5); Write-Host (W back); Write-Host "---------------------------------------"
        $choice=Read-Host (W select_num)
        switch($choice){
            "1"{$providers=@(Invoke-ConfigTool -Action "list"); if($providers.Count -eq 0){Write-Bad(W no_api);Pause-Menu;continue}; for($i=0;$i -lt $providers.Count;$i++){Write-Host ("({0}) {1}" -f ($i+1),$providers[$i].name)}; $selected=Read-Host(W enter_model); if($selected -eq "0"){continue}; $name=$selected; if($selected -match "^\d+$"){$idx=[int]$selected-1;if($idx -lt 0 -or $idx -ge $providers.Count){Write-Bad(W bad_num);Pause-Menu;continue};$name=$providers[$idx].name}; $confirm=Read-Host("$(W confirm_switch_prefix)$name$(W confirm_switch_suffix)"); if($confirm -match "^[Yy]$"){Invoke-ConfigTool -Action "switch" -Arguments @($name)|Out-Null;Write-Ok(W switched);Invoke-Hermes gateway stop|Out-Null;Invoke-Hermes gateway start|Out-Host};Pause-Menu}
            "2"{$name=Read-Host(W provider_name);$url=Read-Host "Base URL";$key=Read-Host "API Key"; if([string]::IsNullOrWhiteSpace($name)-or[string]::IsNullOrWhiteSpace($url)){Write-Bad(W name_url_required);Pause-Menu;continue};$models=@(Get-ProviderModels -BaseUrl $url -ApiKey $key); if($models.Count -gt 0){Write-Ok("$(W auto_found) $($models.Count) $(W models_count)");Invoke-ConfigTool -Action "bulk_add" -Arguments @($name,$url,$key,($models|ConvertTo-Json -Compress))|Out-Null}else{$model=Read-Host(W default_model);if([string]::IsNullOrWhiteSpace($model)){Write-Bad(W model_required);Pause-Menu;continue};Invoke-ConfigTool -Action "add" -Arguments @($name,$url,$key,$model)|Out-Null};Write-Ok("$(W saved_provider)$HermesConfigPath");Pause-Menu}
            "3"{$groups=@(Invoke-ConfigTool -Action "groups");if($groups.Count -eq 0){Write-Bad(W no_sync);Pause-Menu;continue};for($i=0;$i -lt $groups.Count;$i++){Write-Host("({0}) {1} - {2}" -f ($i+1),$groups[$i].name,$groups[$i].base_url)};$selected=Read-Host(W enter_provider_num);if($selected -eq "0"){continue};if($selected -notmatch "^\d+$"){Write-Bad(W enter_number);Pause-Menu;continue};$g=$groups[[int]$selected-1];if(-not $g){Write-Bad(W bad_num);Pause-Menu;continue};$providers=@(Invoke-ConfigTool -Action "list");$sample=$providers|Where-Object{$_.provider -eq $g.name}|Select-Object -First 1;$models=@(Get-ProviderModels -BaseUrl $g.base_url -ApiKey $sample.api_key);if($models.Count -eq 0){Pause-Menu;continue};Invoke-ConfigTool -Action "bulk_add" -Arguments @($g.name,$g.base_url,$sample.api_key,($models|ConvertTo-Json -Compress))|Out-Null;Write-Ok("$(W synced) $($models.Count) $(W models_count)");Pause-Menu}
            "4"{$groups=@(Invoke-ConfigTool -Action "groups");if($groups.Count -eq 0){Write-Bad(W no_delete);Pause-Menu;continue};for($i=0;$i -lt $groups.Count;$i++){Write-Host("({0}) {1} ({2} $(W models_count))" -f ($i+1),$groups[$i].name,$groups[$i].count)};$selected=Read-Host(W delete_provider);if($selected -eq "0"){continue};$name=$selected;if($selected -match "^\d+$"){$name=$groups[[int]$selected-1].name};$confirm=Read-Host("$(W confirm_delete_prefix)$name$(W confirm_delete_suffix)");if($confirm -match "^[Yy]$"){Invoke-ConfigTool -Action "delete" -Arguments @($name)|Out-Null;Write-Ok(W deleted)};Pause-Menu}
            "5"{Start-HermesModelConsole;Pause-Menu}
            "0"{return}
            default{Write-Bad(W bad_input);Start-Sleep -Seconds 1}
        }
    }
}
function Uninstall-HermesAgent { if(-not(Test-HermesInstalled)){Write-Bad(W install_first);return};$confirm=Read-Host(W uninstall_confirm);if($confirm -notmatch "^[Yy]$"){Write-Host(W cancelled);return};Invoke-Hermes gateway stop|Out-Null;Invoke-Hermes gateway uninstall|Out-Null;if(Test-Path $InstallPath){Write-Warn("$(W delete_install)$InstallPath");Remove-Item -LiteralPath $InstallPath -Recurse -Force -ErrorAction SilentlyContinue};$clean=Read-Host("$(W delete_data_prefix)$HermesDataPath ? (y/N)");if($clean -match "^[Yy]$" -and (Test-Path $HermesDataPath)){Remove-Item -LiteralPath $HermesDataPath -Recurse -Force -ErrorAction SilentlyContinue};Write-Ok(W uninstall_done) }
function Show-MainMenu { Clear-Host; Write-Info "================================================="; Write-Host (W main_title) -ForegroundColor Yellow; Write-Info "================================================="; Write-Host "$(W status)$(Get-GatewayStatus)"; Write-Host "$(W version)$(Get-HermesVersionText)"; Write-Info "-------------------------------------------------"; Write-Host (W main_1) -ForegroundColor Green; Write-Host (W main_2) -ForegroundColor Green; Write-Host (W main_3) -ForegroundColor Green; Write-Host (W main_4) -ForegroundColor Green; Write-Host (W main_5) -ForegroundColor Green; Write-Host (W main_6) -ForegroundColor Green; Write-Host (W main_7) -ForegroundColor Green; Write-Host (W main_8) -ForegroundColor Green; Write-Host (W main_0) -ForegroundColor Green; Write-Info "=================================================" }
while($true){ Show-MainMenu; $choice=Read-Host(W select_main); switch($choice){"1"{Install-HermesAgent;Pause-Menu}"2"{Start-HermesGateway;Pause-Menu}"3"{Stop-HermesGateway;Pause-Menu}"4"{Show-ApiManagementMenu}"5"{Write-Warn(W enter_chat);Start-HermesChatConsole;Pause-Menu}"6"{if(Test-HermesInstalled){Invoke-Hermes setup|Out-Host}else{Write-Bad(W install_first)};Pause-Menu}"7"{if(Test-HermesInstalled){Invoke-Hermes update|Out-Host}else{Write-Bad(W install_first)};Pause-Menu}"8"{Uninstall-HermesAgent;Pause-Menu}"0"{Write-Ok(W bye);break}default{Write-Bad(W bad_input);Start-Sleep -Seconds 1}} }
