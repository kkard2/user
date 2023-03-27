#SingleInstance Force

+CapsLock::CapsLock
CapsLock Up::{
    KeyWait "CapsLock"

    if (A_PriorKey = "CapsLock")
        Send "{Esc}"
}
