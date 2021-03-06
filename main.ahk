; Made by kyo.

Sleep, 100
SoundPlay, %A_ScriptDir%\GUISounds\on.wav ; Epick startup sound

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; GUI SECTION \/
Gui, Add, Tab3, x32 y29 w420 h320 , General|View

Gui, Tab, General

    KeyDelayValue = 200
    TimeWait = 5
    
    Gui, Add, Text,, -- Typing Speed -- (Only works with arrow buttons) 
    Gui, Add, Edit
    Gui, Add, UpDown, vUD gSpeedUpdate Range200-1000
    
    Gui, Add, Text,, -- Bot Prefix --
    Gui, Add, Edit, vBotPrefix w120 , U!
    
    ;Gui, Add, CheckBox, x362 y309 w80 h30 , Auto Delay? | Not Implemented.
    Gui, Add, Button, gButtonExec x42 y309 w100 h30, Start
    
    Gui, Add, Text, vTimeWait x152 y319 w200 h20 , Waiting...

Gui, Tab, View
    
    Gui, Add, Text, x203 y183 w80 h20 , Coming Soon...

; Generated using SmartGUI Creator 4.0 (Really cool tool).
Gui, Color, 261c75
Gui, Show, x127 y87 h391 w491, New GUI Window
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END GUI SECTION /\

SpeedUpdate:
    SoundPlay, %A_ScriptDir%\GUISounds\click.wav
    KeyDelayValue += UD-PrevUD
    PrevUD := UD
return

ButtonExec:
; Updates bot prefix and typing speed (if UD buttons weren't pressed)
Gui, Submit
Gui, Show

    SoundPlay, %A_ScriptDir%\GUISounds\countdown.wav
Loop, 5
    {
    GuiControl,,TimeWait, Starting in %TimeWait%...
    TimeWait -=1
    Sleep, 1000
}

    SoundPlay, %A_ScriptDir%\GUISounds\start.wav
    GuiControl,,TimeWait, Started!

Loop,
    {
	SetKeyDelay KeyDelayValue
        Random, WorkSleepDelay, 1000, 6000 ; 1 to 6 seconds
        Random, EndSleepDelay, 32000, 180000 ; 32 seconds to 3 minutes
        
        Send, {Raw}%BotPrefix%work
        Send, {Enter}
        Sleep, %WorkSleepDelay%

        Send, {Raw}%BotPrefix%dep all
        Send, {Enter}
        Sleep, %EndSleepDelay%
}
return

GuiClose:
    SoundPlay, %A_ScriptDir%\GUISounds\exit.wav
    Sleep, 300
    ExitApp

Esc::
    SoundPlay, %A_ScriptDir%\GUISounds\exit.wav
    Sleep, 300
    ExitApp

;; [SOURCES] ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; "on" and "start" Sounds: https://www.zapsplat.com/ (Edited). ;;;;;;;;;;;;;;;;;;;;;;;;;
;; "click" Sound: https://www.youtube.com/watch?v=sgYphs4F-JQ (Edited). ;;;;;;;;;;;;;;;;;
;; "countdown" and "exit" Sounds: Ableton stock (Edited). ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TODO : - REWRITE SCRIPT ADDING A GUI (oh boy) [DONE]
;;        - ADD BOT PREFIX CUSTOMIZATION AT SCRIPT START [DONE]
;;        - ADD SOUND EFFECTS [DONE]
;;        - FIX TYPING SPEED INPUT [x]
