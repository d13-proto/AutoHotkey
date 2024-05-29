#Requires AutoHotkey v2.0

spamKeys := [
    'J',
    'K',
]

; SetKeyDelay(200, 0)

Loop spamKeys.Length {
    Hotkey('$' . spamKeys[A_Index], spamWhenPress)
}

spamWhenPress(key) {
    key := LTrim(key, '$^!+#')
    keyName := '{' . key . '}'

    While GetKeyState(key, 'P') {
        SendInput(keyName)
        Sleep(10)

        ; 游戏不支持 SendInput 时尝试 SendPlay
        ; SendPlay(keyName)
    }
}
