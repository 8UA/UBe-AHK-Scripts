; Made by kyo.

MsgBox,, Made by kyo. , 0 = Start script | Esc = Exit Script

Esc::
    MsgBox,, Bye! , Exited.
    ExitApp

0::
    Loop, {

    Random, KeyDelay, 200, 350 ; Kinda humanized typing speed
    Random, WorkSleepDelay, 32000, 60000 ; 32 seconds to 1 minute
    Random, EndSleepDelay, 4000, 30000 ; 4 to 30 seconds

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
