#Requires AutoHotkey v2.0

; CapsLock = Ctrl
CapsLock::Ctrl

; Win+W = Alt+F4|关闭窗口
#w::!F4

; Ctrl+Shift+V = Win+V|Windows 剪贴板历史记录
^+v::#v

; Win+S = Ctrl+PrtSc|Snipaste 截图
#s::^PrintScreen

; Win+Shift+S = Ctrl+Shift+PrtSc|Snipaste 贴图
#+s::^+PrintScreen

; Win+Ctrl+S = PrtSc|Windows 截图工具
#^s::PrintScreen

; 快捷短语

::@date:: {
    SendInput FormatTime(, 'yyyy-MM-dd')
}
::@time:: {
    SendInput FormatTime(, 'yyyy-MM-dd HH:mm:ss')
}
