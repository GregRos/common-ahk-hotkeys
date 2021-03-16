#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

MyDevice:=2
RotateDevice(device, angle)
{
    RunWait, display64.exe /device %device% /rotate %angle%, %A_ScriptDir%
}

#^Numpad2::
    RotateDevice(MyDevice, 0)
    Return

#^Numpad6::
    RotateDevice(MyDevice, 90)
    Return

#^Numpad8::
    RotateDevice(MyDevice, 180)
    Return

#^Numpad4::
    RotateDevice(MyDevice, 270)
    Return

NumpadAdd::
    SendInput, {Volume_Up}
    Return

NumpadSub::
    SendInput, {Volume_Down}
    Return

NumpadMult:
    SendInput, {Volume_Mute}
    return

Numpad5:
    SendInput, {Media_Play_Pause}
    Return

Numpad6:
    SendInput, {Media_Next}
    Return

Numpad4:
    SendInput, {Media_Prev}
    Return
    