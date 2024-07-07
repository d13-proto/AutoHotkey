#Requires AutoHotkey v2.0

; 常用键: LButton, RButton, Space, Enter, LCtrl
keyName := '{Space}'

; F8 切换暂停
F8::Pause(-1)

SetTimer(sendKey, 10)

Pause

sendKey() {
    SendInput(keyName)
}
