rem It is event which will run first when you start the program.


:event_on.start
@echo off
color 0D
mode con cols=32 lines=15
title Stone, Scissors, Paper


rem #### It is variables used for game. ####


set stone=stone
set scissors=scissors
set paper=paper


rem #### It is main block. Do not change it. ####


:event_main.block
cls
echo *****Open-source SSP Game*****
echo # By F4stZ4p
echo # Written in Batch
echo ------------------------------
echo Select action:
echo 1 - Play!
echo 2 - Last game info
echo 3 - Quit
echo ------------------------------
set /p action="Input a number: "
if %action% lss 1 goto :event_on.invalid.number
if %action% equ 1 goto :event_on.game.start
if %action% equ 2 goto :event_last.played.info
if %action% equ 3 goto :event_quit.game
if %action% gtr 3 goto :event_on.invalid.number

rem #### Events ####

:event_last.played.info
cls
mode con cols=86 lines=5
set /p matchlog=<match.log
echo %matchlog%
pause >nul
mode con cols=32 lines=15
goto :event_main.block

:event_quit.game
exit


:event_on.invalid.number
color 0C
cls
echo ------------------------------
echo Error:
echo It is not valid action.
echo ------------------------------
pause >nul
color 0D
goto :event_main.block

:event_on.invalid.number.game
color 0C
cls
echo ------------------------------
echo Error:
echo It is not valid action.
echo ------------------------------
pause >nul
color 0D
goto :event_on.game.start

:event_on.game.start
cls
echo ------------------------------
echo Select your thing:
echo 1 - Stone
echo 2 - Scissors
echo 3 - Paper
echo ------------------------------
set /p playaction="Input a number: "
if %playaction% lss 1 goto :event_on.invalid.number.game
if %playaction% equ 1 goto :event_player.picked.stone
if %playaction% equ 2 goto :event_player.picked.scissors
if %playaction% equ 3 goto :event_player.picked.paper
if %playaction% gtr 3 goto :event_on.invalid.number.game

:event_player.picked.stone
cls
echo ------------------------------
echo Info:
echo You picked stone!
echo ------------------------------
set /a numstone=%random% %% 3
if %numstone% equ 0 echo Computer picked stone.
if %numstone% equ 0 echo Draw!
if %numstone% equ 0 set computerchoice=stone
if %numstone% equ 0 echo %date% ; %time% ; %username% picked %stone% and computer picked %computerchoice%: Draw! > match.log
if %numstone% equ 1 echo Computer picked scissors.
if %numstone% equ 1 echo You won!
if %numstone% equ 1 set computerchoice=scissors
if %numstone% equ 1 echo %date% ; %time% ; %username% picked %stone% and computer picked %computerchoice%: Victory! > match.log
if %numstone% equ 2 echo Computer picked paper.
if %numstone% equ 2 echo You lost!
if %numstone% equ 2 set computerchoice=paper
if %numstone% equ 2 echo %date% ; %time% ; %username% picked %stone% and computer picked %computerchoice%: Defeat! > match.log
echo ------------------------------
echo Result saved as match.log!
pause >nul
goto :event_main.block

:event_player.picked.scissors
cls
echo ------------------------------
echo Info:
echo You picked scissors!
echo ------------------------------
set /a numscissors=%random% %% 3
if %numscissors% equ 0 echo Computer picked stone.
if %numscissors% equ 0 echo You lost!
if %numscissors% equ 0 set computerchoice=stone
if %numscissors% equ 0 echo %date% ; %time% ; %username% picked %scissors% and computer picked %computerchoice%: Defeat! > match.log
if %numscissors% equ 1 echo Computer picked scissors.
if %numscissors% equ 1 echo Draw!
if %numscissors% equ 1 set computerchoice=scissors
if %numscissors% equ 1 echo %date% ; %time% ; %username% picked %scissors% and computer picked %computerchoice%: Draw! > match.log
if %numscissors% equ 2 echo Computer picked paper.
if %numscissors% equ 2 echo You won!
if %numscissors% equ 2 set computerchoice=paper
if %numscissors% equ 2 echo %date% ; %time% ; %username% picked %scissors% and computer picked %computerchoice%: Victory! > match.log
echo ------------------------------
echo Result saved as match.log!
pause >nul
goto :event_main.block

:event_player.picked.paper
cls
echo ------------------------------
echo Info:
echo You picked paper!
echo ------------------------------
set /a numpaper=%random% %% 3
if %numpaper% equ 0 echo Computer picked stone.
if %numpaper% equ 0 echo You won!
if %numpaper% equ 0 set computerchoice=stone
if %numpaper% equ 0 echo %date% ; %time% ; %username% picked %paper% and computer picked %computerchoice%: Victory! > match.log
if %numpaper% equ 1 echo Computer picked scissors.
if %numpaper% equ 1 echo Defeat!
if %numpaper% equ 1 set computerchoice=scissors
if %numpaper% equ 1 echo %date% ; %time% ; %username% picked %paper% and computer picked %computerchoice%: Defeat! > match.log
if %numpaper% equ 2 echo Computer picked paper.
if %numpaper% equ 2 echo Draw!
if %numpaper% equ 2 set computerchoice=paper
if %numpaper% equ 2 echo %date% ; %time% ; %username% picked %paper% and computer picked %computerchoice%: Draw! > match.log
echo ------------------------------
echo Result saved as match.log!
pause >nul
goto :event_main.block