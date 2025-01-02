#Requires AutoHotkey v2.0
; Hotkey: Ctrl+G
^g::
{
    Send("{Enter}") ; Open chat
    Sleep(50)
    Send("Good Luck, Have Fun.") ; Type 'gl hf!' message
    Sleep(50)
    Send("{Enter}") ; Send message
    return
}

; Side button XButton1: Press 5, then hold Q while button is pressed
XButton1::
{
    SendEvent("{5}") ; Press "5" once
    Sleep(1) ; Short delay for processing
    ; Hold "q" until button is released
    while GetKeyState("XButton1", "P")
    {
        SendEvent("{q down}") ; Hold "q"
        Sleep(50) ; Small delay
    }
    SendEvent("{q up}") ; Release "q" when button is released
    return
}

; Side button XButton2: Press 4, hold Shift, press X, click mouse at cursor position, then press Space
XButton2::
{
    SendEvent("{4}") ; Press "4"
    Sleep(10) ; Delay
    ; While XButton2 is held, execute loop
    while GetKeyState("XButton2", "P")
    {
        SendEvent("{x}") ; Press "X"
        Sleep(10) ; Delay
        ; Mouse click
        MouseClick("left") ; Left mouse click
        Sleep(10) ; Delay
        ; Press space
        SendEvent("{Space}") ; Press "Space"
        Sleep(10) ; Delay between actions
    }
    return
}
