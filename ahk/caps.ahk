#SingleInstance Force

; This cannot run as a separate script
#Include leader.ahk

#HotIf GetKeyState("CapsLock", "P")
q::Esc
#HotIf

CapsLock::{
    KeyWait "CapsLock"
    if A_ThisHotkey = "CapsLock" {
        Send "{Escape}"
    }
}

!CapsLock::{
    return
}
^CapsLock::{
    return
}
^!CapsLock::{
    return
}
+CapsLock::{
    return
}

Esc::F13
