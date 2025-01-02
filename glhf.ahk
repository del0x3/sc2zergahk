#Requires AutoHotkey v2.0
; Горячая клавиша: Ctrl+G
^g::
{
    Send("{Enter}") ; Открыть чат
    Sleep(50)
    Send("Good Luck, Have Fun.") ; Написать сообщение 'gl hf!' (Good Luck, Have Fun!)
    Sleep(50)
    Send("{Enter}") ; Отправить сообщение
    return
}
; Боковая кнопка XButton1: Нажимать 5, затем удерживать q, пока кнопка удерживается
XButton1::
{
    SendEvent("{5}") ; Нажать "5" один раз
    Sleep(1) ; Короткая задержка для обработки

    ; Удерживать "q" пока кнопка не отпущена
    while GetKeyState("XButton1", "P")
    {
        SendEvent("{q down}") ; Удерживать "q"
        Sleep(50) ; Небольшая задержка
    }

    SendEvent("{q up}") ; Отпустить "q", когда кнопка отпущена
    return
}
; Боковая кнопка XButton2: Нажать 4, удержать Shift, нажать X, кликнуть мышью в точке курсора, затем нажать Space

; Боковая кнопка XButton2: Нажать 4, удержать Shift, нажать X, кликнуть мышью в точке курсора, затем нажать Space
XButton2::
{
    SendEvent("{4}") ; Нажать "4"
    Sleep(10) ; Задержка

    ; Пока зажата XButton2, выполняем цикл
    while GetKeyState("XButton2", "P")
    {
        SendEvent("{x}") ; Нажать "X"
        Sleep(10) ; Задержка

        ; Клик мышью
        MouseClick("left") ; Клик левой кнопкой мыши
        Sleep(10) ; Задержка

        ; Нажать пробел
        SendEvent("{Space}") ; Нажать "Space"
        Sleep(10) ; Задержка между действиями
    }
    return
}