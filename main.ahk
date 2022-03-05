; Made by kyo.

MsgBox,, Made by kyo. , 0 = Start script | Esc = Exit Script

Esc::
    MsgBox,, Bye! , Exited.
    ExitApp

0::
    Loop, {

    Random, KeyDelay, 200, 350 ; Kinda humanized typing speed
    Random, WorkSleepDelay, 4000, 6000 ; 4 to 6 seconds
    Random, EndSleepDelay, 32000, 180000 ; 32 seconds to 3 minutes

        SetKeyDelay %KeyDelay%

        Send, {Raw}U!work
        Send, {Enter}
        Sleep, %WorkSleepDelay%

        Send, {Raw}U!dep all
        Send, {Enter}
        Sleep, %EndSleepDelay%

    }

return

;; TODO : - REWRITE SCRIPT ADDING A GUI (oh boy) [x]
;;        - ADD BOT PREFIX CUSTOMIZATION AT SCRIPT START [x]
