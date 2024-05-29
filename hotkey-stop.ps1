
Start-Process `
    -FilePath powershell.exe `
    -Verb runAs `
    "Stop-Process -Name AutoHotkey64"
