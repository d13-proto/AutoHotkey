#Requires AutoHotkey v2.0

; 常用键: LButton, RButton, Space, Enter, LCtrl
keyName := '{Space}'

SetTimer(sendKey, 10)

Pause

F8::Pause(-1)

sendKey() {
    SendInput(keyName)
}
