$AutoHotkeyBin = "AutoHotkey64.exe"

if (!(Get-Command -Name $AutoHotkeyBin -ErrorAction SilentlyContinue)) {

    $AutoHotkeyBin = "$env:USERPROFILE\AppData\Local\Programs\AutoHotkey\v2\AutoHotkey64.exe"

    if (!(Test-Path -Path $AutoHotkeyBin)) {
        Write-Error "AutoHotkey64.exe 不存在"
    }
}

Start-Process `
    -FilePath $AutoHotkeyBin `
    -WorkingDirectory $PSScriptRoot `
    -Verb runAs `
    global.ahk

Start-Process `
    -FilePath $AutoHotkeyBin `
    -WorkingDirectory $PSScriptRoot `
    programs.ahk
