
:game
cls
set a1=1
set a2=2
set a3=3
set a4=4
set a5=5
set a6=6
set a7=7
set a8=8
set a9=9
set s1=A
set s2=A
set s3=A
set s4=A
set s5=A
set s6=A
set s7=A
set s8=A
set s9=A
set attack=0
set cycle=0
set moves=0

:Start
cls
echo.                                                                    *******
echo.                                                                    *%a1% %a2% %a3%*
echo.                                                                    *%a4% %a5% %a6%*
echo.                                                                    *%a7% %a8% %a9%*
echo.                                                                    *******
echo Enter a number:
@CHOICE /C:123456789 /N
if errorlevel 9 goto d9
if errorlevel 8 goto d8
if errorlevel 7 goto d7
if errorlevel 6 goto d6
if errorlevel 5 goto d5 
if errorlevel 4 goto d4
if errorlevel 3 goto d3
if errorlevel 2 goto d2
if errorlevel 1 goto d1
goto Start

:d1
if %s1% EQU N goto Start
set a1=X
set s1=N
set /a moves=%moves%+1
goto check

:d2
if %s2% EQU N goto Start
set a2=X
set s2=N
set /a moves=%moves%+1
goto check

:d3
if %s3% EQU N goto Start
set a3=X
set s3=N
set /a moves=%moves%+1
goto check

:d4
if %s4% EQU N goto Start
set a4=X
set s4=N
set /a moves=%moves%+1
goto check

:d5
if %s5% EQU N goto Start
set a5=X
set s5=N
set /a moves=%moves%+1
goto check

:d6
if %s6% EQU N goto Start
set a6=X
set s6=N
set /a moves=%moves%+1
goto check

:d7
if %s7% EQU N goto Start
set a7=X
set s7=N
set /a moves=%moves%+1
goto check

:d8
if %s8% EQU N goto Start
set a8=X
set s8=N
set /a moves=%moves%+1
goto check

:d9
if %s9% EQU N goto Start
set a9=X
set s9=N
set /a moves=%moves%+1
goto check

:check
::Horizontal
if %a1%+%a2%+%a3% EQU X+X+X goto win
if %a4%+%a5%+%a6% EQU X+X+X goto win
if %a7%+%a8%+%a9% EQU X+X+X goto win
::Vertical
if %a1%+%a4%+%a7% EQU X+X+X goto win
if %a2%+%a5%+%a8% EQU X+X+X goto win
if %a3%+%a6%+%a9% EQU X+X+X goto win
::Diagonal
if %a1%+%a5%+%a9% EQU X+X+X goto win
if %a3%+%a5%+%a7% EQU X+X+X goto win
if %moves% EQU 9 goto draw
goto middle

:middle
if %s5% EQU N goto mon
set a5=O
set s5=N
set /a moves=%moves%+1
goto moncheck

:mon
if %moves% GEQ 1 goto Offence
if %moves% EQU 9 goto draw

:Offence
::First Line Horizontal
if %a1%+%a2%+%a3% EQU O+O+3 goto a3set
if %a1%+%a2%+%a3% EQU 1+O+O goto a1set
if %a1%+%a2%+%a3% EQU O+2+O goto a2set

::Second Line Horizontal
if %a4%+%a5%+%a6% EQU O+O+6 goto a6set
if %a4%+%a5%+%a6% EQU O+5+O goto a5set
if %a4%+%a5%+%a6% EQU 4+O+O goto a4set

::Third Line Horizontal
if %a7%+%a8%+%a9% EQU O+O+9 goto a9set
if %a7%+%a8%+%a9% EQU 7+O+O goto a7set
if %a7%+%a8%+%a9% EQU O+8+O goto a8set

::First Line Vertical
if %a1%+%a4%+%a7% EQU 1+O+O goto a1set
if %a1%+%a4%+%a7% EQU O+4+O goto a4set
if %a1%+%a4%+%a7% EQU O+O+7 goto a7set

::Second Line Vertical 
if %a2%+%a5%+%a8% EQU 2+O+O goto a2set
if %a2%+%a5%+%a8% EQU O+5+O goto a5set
if %a2%+%a5%+%a8% EQU O+O+8 goto a8set

::Third Line Vertical
if %a3%+%a6%+%a9% EQU O+O+9 goto a9set
if %a3%+%a6%+%a9% EQU 3+O+O goto a3set
if %a3%+%a6%+%a9% EQU O+6+O goto a6set

::Left to Right
if %a1%+%a5%+%a9% EQU O+5+O goto a5set
if %a1%+%a5%+%a9% EQU O+O+9 goto a9set
if %a1%+%a5%+%a9% EQU 1+O+O goto a1set

::Right to Left
if %a3%+%a5%+%a7% EQU O+O+7 goto a7set
if %a3%+%a5%+%a7% EQU O+5+O goto a5set
if %a3%+%a5%+%a7% EQU 3+O+O goto a3set
goto Defence

:Defence
::First Line Horizontal
if %a1%+%a2%+%a3% EQU X+X+3 goto a3set
if %a1%+%a2%+%a3% EQU 1+X+X goto a1set
if %a1%+%a2%+%a3% EQU X+2+X goto a2set

::Second Line Horizontal
if %a4%+%a5%+%a6% EQU X+X+6 goto a6set
if %a4%+%a5%+%a6% EQU X+5+X goto a5set
if %a4%+%a5%+%a6% EQU 4+X+X goto a4set

::Third Line Horizontal
if %a7%+%a8%+%a9% EQU X+X+9 goto a9set
if %a7%+%a8%+%a9% EQU 7+X+X goto a7set
if %a7%+%a8%+%a9% EQU X+8+X goto a8set

::First Line Vertical
if %a1%+%a4%+%a7% EQU 1+X+X goto a1set
if %a1%+%a4%+%a7% EQU X+4+X goto a4set
if %a1%+%a4%+%a7% EQU X+X+7 goto a7set

::Second Line Vertical 
if %a2%+%a5%+%a8% EQU 2+X+X goto a2set
if %a2%+%a5%+%a8% EQU X+5+X goto a5set
if %a2%+%a5%+%a8% EQU X+X+8 goto a8set

::Third Line Vertical
if %a3%+%a6%+%a9% EQU X+X+9 goto a9set
if %a3%+%a6%+%a9% EQU 3+X+X goto a3set
if %a3%+%a6%+%a9% EQU X+6+X goto a6set

::Left to Right
if %a1%+%a5%+%a9% EQU X+5+X goto a5set
if %a1%+%a5%+%a9% EQU X+X+9 goto a9set
if %a1%+%a5%+%a9% EQU 1+X+X goto a1set

::Right to Left
if %a3%+%a5%+%a7% EQU X+X+7 goto a7set
if %a3%+%a5%+%a7% EQU X+5+X goto a5set
if %a3%+%a5%+%a7% EQU 3+X+X goto a3set
goto Random

:Random
set /a attack=%Random% * 9 / 32768 +1
set /a cycle=%cycle%+1
if %cycle% LEQ 1 goto Random
if %attack% EQU 1 goto a1set
if %attack% EQU 2 goto a2set
if %attack% EQU 3 goto a3set
if %attack% EQU 4 goto a4set
if %attack% EQU 5 goto a5set
if %attack% EQU 6 goto a6set
if %attack% EQU 7 goto a7set
if %attack% EQU 8 goto a8set
if %attack% EQU 9 goto a9set
goto Random

:a1set
if %s1% EQU N goto Random
set a1=O
set s1=N
set /a moves=%moves%+1
goto moncheck

:a2set
if %s2% EQU N goto Random
set a2=O
set s2=N
set /a moves=%moves%+1
goto moncheck

:a3set
if %s3% EQU N goto Random
set a3=O
set s3=N
set /a moves=%moves%+1
goto moncheck

:a4set
if %s4% EQU N goto Random
set a4=O
set s4=N
set /a moves=%moves%+1
goto moncheck

:a5set
if %s5% EQU N goto Random
set a5=O
set s5=N
set /a moves=%moves%+1
goto moncheck

:a6set
if %s6% EQU N goto Random
set a6=O
set s6=N
set /a moves=%moves%+1
goto moncheck

:a7set
if %s7% EQU N goto Random
set a7=O
set s7=N
set /a moves=%moves%+1
goto moncheck

:a8set
if %s8% EQU N goto Random
set a8=O
set s8=N
set /a moves=%moves%+1
goto moncheck

:a9set
if %s9% EQU N goto Random
set a9=O
set s9=N
set /a moves=%moves%+1
goto moncheck

:moncheck
::Horizontal
if %a1%+%a2%+%a3% EQU O+O+O goto lose
if %a4%+%a5%+%a6% EQU O+O+O goto lose
if %a7%+%a8%+%a9% EQU O+O+O goto lose
::Vertical
if %a1%+%a4%+%a7% EQU O+O+O goto lose
if %a2%+%a5%+%a8% EQU O+O+O goto lose
if %a3%+%a6%+%a9% EQU O+O+O goto lose
::Diagonal
if %a1%+%a5%+%a9% EQU O+O+O goto lose
if %a3%+%a5%+%a7% EQU O+O+O goto lose
if %moves% EQU 9 goto draw
goto Start

:win
cls
echo                                                          Congratulation, you win!!!
pause
goto game

:lose
cls
echo                                                     You lost!, try to be better next time. 
pause
goto game 

:draw
cls
echo                                                  It's a draw, look like no one is the winner 
pause
goto game