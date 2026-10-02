#Requires AutoHotkey v2.0

; Pin 2: System Microphone Mute/Unmute Toggle
$^+!F13::
{
    Critical
    KeyWait "F13"
    Run('SoundVolumeView.exe /SwitchMute CaptureDevice', "", "Hide")
}

; Pin 4: Switch Output Sound (Speakers <-> fifine H13 Game)
$^+!F14::
{
    Critical
    KeyWait "F14"
    ; Switches default output between Speakers and Fifine H13 Game headset
    Run('SoundVolumeView.exe /SwitchDefault "Speakers" "fifine H13 Game"', "", "Hide")
}

; Pin 6: Office Govee Lights Toggle (Ctrl + Shift + Alt + F15)
$^+!F15::
{
    Critical
    KeyWait "F15"
    
    static lightsOn := false
    lightsOn := !lightsOn
    newState := lightsOn ? "on" : "off"
    
    SendGoveeCommand("MAC ADDRESS ", "H6056", newState)
    SendGoveeCommand("MAC ADDRESS", "H6056", newState)
}

SendGoveeCommand(macAddress, modelNumber, state)
{
    apiKey := "YOUR API KEY"
    url := "https://developer-api.govee.com/v1/devices/control"
    
    req := ComObject("MSXML2.XMLHTTP")
    req.open("PUT", url, false)
    req.setRequestHeader("Govee-API-Key", apiKey)
    req.setRequestHeader("Content-Type", "application/json")
    
    body := '{"device": "' macAddress '", "model": "' modelNumber '", "cmd": {"name": "turn", "value": "' state '"}}'
    req.send(body)
}

; Pin 8: Open Discord (Ctrl + Shift + Alt + F16)
$^+!F16::
{
    if WinExist("ahk_exe Discord.exe")
        WinActivate
    else
        Run("Discord.exe")
}

; Pin 15: Open Streamlabs (Ctrl + Shift + Alt + F17)
$^+!F17::
{
    if WinExist("ahk_exe Streamlabs OBS.exe")
        WinActivate
    else
        Run("Streamlabs OBS.exe")
}
