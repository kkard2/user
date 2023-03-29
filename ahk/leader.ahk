SystemLeader := "CapsLock"

#HotIf GetKeyState(SystemLeader, "P")
h::Left
j::Down
k::Up
l::Right

w::^Right
b::^Left
i::Home
a::End

o::{
    Send "{End}{Enter}"
}
+o::{
    Send "{Home}{Enter}{Up}"
}
#HotIf
