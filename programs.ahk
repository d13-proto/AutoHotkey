#Requires AutoHotkey v2.0

; 火狐
#HotIf WinActive('ahk_exe firefox.exe')
{
    ; Alt+W = 打开 Firefox View
    !w:: {
        ; HACK 等待运行完成并激活窗口，防止打开页面后丢失焦点
        RunWait 'C:\Program Files\Firefox Developer Edition\firefox.exe -url about:firefoxview#recentlyclosed'
        Sleep 100
        WinActivate
    }

    ; Alt+W = Ctrl+Shift+T|撤销关闭页面
    ; !w::^+t

    ; Ctrl+E = Ctrl+Shift+F1|打开 Tab Stash
    ^e::^+F1
}

; Photoshop
#HotIf WinActive('ahk_exe Photoshop.exe')
{
    ; 修饰键轮换，Ctrl+滚轮 = 缩放，Shift+滚轮 = 横向滚动
    LShift::LCtrl
    LCtrl::LAlt
    LAlt::LShift
}
