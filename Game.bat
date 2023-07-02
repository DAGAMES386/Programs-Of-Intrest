@echo off
title Game
color 0A
if "%1" neq "" ( goto %1)

:Menu

cls
::echo        _..._                                                                                                                                          
::echo     .-'_..._''. .---.                                                                                                                                 
::echo   .' .'      '.\|   |                                          __  __   ___                             .              __.....__      __  __   ___    
::echo  / .'           |   |                                         |  |/  `.'   `.         .-.          .- .'|          .-''         '.   |  |/  `.'   `.  
::echo . '             |   |                                         |   .-.  .-.   '         \ \        / /<  |         /     .-''"'-.  `. |   .-.  .-.   ' 
::echo | |             |   |    __                                   |  |  |  |  |  |    __    \ \      / /  | |        /     /________\   \|  |  |  |  |  | 
::echo | |             |   | .:--.'.         _         _             |  |  |  |  |  | .:--.'.   \ \    / /   | | .'''-. |                  ||  |  |  |  |  | 
::echo . '             |   |/ |   \ |      .' |      .' |            |  |  |  |  |  |/ |   \ |   \ \  / /    | |/.'''. \\    .-------------'|  |  |  |  |  | 
::echo 
::echo 
::echo 
::echo 
::echo
::echo
::echo
::echo
echo   ___  __      __    ___  ___    _____  ____    __  __    __   _  _  _   _  ____  __  __ 
echo  / __)(  )    /__\  / __)/ __)  (  _  )( ___)  (  \/  )  /__\ ( \/ )( )_( )( ___)(  \/  )
echo ( (__  )(__  /(__)\ \__ \\__ \   )(_)(  )__)    )    (  /(__)\ \  /  ) _ (  )__)  )    ( 
echo  \___)(____)(__)(__)(___/(___/  (_____)(__)    (_/\/\_)(__)(__)(__) (_) (_)(____)(_/\/\_)






echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit

:Start_1
cls
echo Oh no! You're surrounded by jocks.
echo There are five of them, and they're all armed with mechanical pencils.
echo If you engage in a conversation about the weather, you have a high chance of causing intense confusion.
echo There is also the small chance of escape if you decide to run.
set /p answer=Would you like to talk or run? 
if %answer%==talk goto Fight_1
if %answer%==run goto Run_1
pause

:Run_1
cls
echo You silly lil diddly doo-darn. You're trying to outrun jocks.
echo You are disembowled by a pencil shiv.
set /p answer=Would you like to play again? [y/n] 
if %answer%==y goto Menu
if %answer%==n goto Exit

:Fight_1
echo prepare to discuss the weather.
echo The jocks ready their pencils all at once.
set /p answer= Type 1 if it is cloudy, or 2 if it is sunny. Press Enter to continue. 
if %answer%==1 goto Fight_1_Loop
if %answer%==2 goto Fight_2_Loop

:Fight_1_Loop
echo You remark about the clouds in the air.
echo The jocks appear to be confused by the concept of 'clowds'.
set /a num=%random% %%4 +1

if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1

:Fight_1_Loop
echo You remark about the sun shining from space.
echo The jocks appear to be confused by the concept of 'spayce'.
set /a num=%random% %%4 +1

if %num%==1
echo test
goto Lose_Fight_1

if %num%==2 
echo test
goto Win_Fight_1

if %num%==3 
echo test
goto Win_Fight_1

if %num%==4
echo test
goto Win_Fight_1


:Lose_Fight_1
cls
echo The jocks' brains melt and they become enraged.
pause
cls
echo You were killed by a pencil shiv. Play again?
set /p answer=Would you like to play again? [y/n] 
if %answer%==y goto Menu
if %answer%==n goto Exit

:Win_Fight_1
cls
echo You leave the jocks on the floor, babbling about concepts beyond their comprehension. Vicortory!
set /p answer=Would you like to play again? [y/n] 
if %answer%==y goto Menu
if %answer%==n goto Exit

::Credits + exit

:Credits
cls
echo Credits
echo.
echo Made by Deegus with help from Wikihow
pause
goto Menu

:Exit
cls
echo See ya later!
pause
exit /b
