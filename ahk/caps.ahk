#SingleInstance Force

CapsLockState := false

#HotIf GetKeyState("CapsLock", "P")
q::Esc
#HotIf

*CapsLock::{
    KeyWait "CapsLock"
    if A_ThisHotkey = "*CapsLock" {
        if GetKeyState("Shift") {
            global CapsLockState := not CapsLockState
            SetCapsLockState CapsLockState
        } else {
            Send "{Escape}"
        }
    }
}
