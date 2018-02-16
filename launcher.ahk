; ---------------------------------------------------------------------------
; Launcher
; ---------------------------------------------------------------------------
!g::launchOrActivate("chrome.exe")
!f::launchOrActivate("firefox.exe")

launchOrActivate(target)
{
    Process, Exist, %target%
    If ErrorLevel <> 0
        WinActivate, ahk_pid %ErrorLevel%
    Else
        Run, %target%
    Return
}
