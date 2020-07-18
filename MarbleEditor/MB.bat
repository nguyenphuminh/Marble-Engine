@echo off
title Marble Editor
color 73
mode con cols=157 lines=35
:menu
cls
echo.    =====================================================================================================================================================
echo.    =                                                                Marble Editor                                                                      =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                             1.Create new game                                                                     =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                             2.Delete existed project                                                              =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                             3.Load existed project                                                                =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                             4.Credit                                                                              =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =====================================================================================================================================================
@CHOICE /C:1234 /N
if errorlevel 4 goto credit
if errorlevel 3 goto load
if errorlevel 2 goto delete
if errorlevel 1 goto createnew
goto menu

:credit
cls
echo.
echo.
echo.
echo. This engine was created by Nguyen Phu Minh
pause >nul

:createnew
cls
echo.    =====================================================================================================================================================
echo.    =                                                                Marble Editor                                                                      =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                         1.Create a Tic Tac Toe game                                                               =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                           2.Create a 2D maze game                                                                 =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    ===================================================================================================================================================== 
@CHOICE /C:12 /N
if errorlevel 2 goto createmaze
if errorlevel 1 goto createttt

:createttt
cls
echo.
echo.
echo.
echo. Type quit to quit
echo. Project name:
set /p project=
if "%project%" == "quit" goto menu
cd "Projects"
md "%project%"
cd "../Marble"
copy "tictactoe.bat" "../Projects/%project%"
copy "SOUND.EXE" "../Projects/%project%"
copy "core.bat" "../Projects/%project%"
cd "../Projects/%project%"
copy "win.wav" "../Projects/%project%"
copy "lose.wav" "../Projects/%project%"
copy "draw.wav" "../Projects/%project%"
goto editor1

:createmaze
cls
echo.
echo.
echo.
echo. Type quit to quit
echo. Project name:
set /p project=
if "%project%" == "quit" goto menu
cd "Projects"
md "%project%"
cd "../Marble"
copy "game.bat" "../Projects/%project%"
copy "engine.bat" "../Projects/%project%"
copy "redofloor.bat" "../Projects/%project%"
copy "SOUND.EXE" "../Projects/%project%"
copy "core.bat" "../Projects/%project%"
copy "win.bat" "../Projects/%project%"
copy "lose.wav" "../Projects/%project%"
copy "draw.wav" "../Projects/%project%"
cd "../Projects/%project%"
goto editor2

:delete
cls
echo.
echo.
echo.
echo. Type quit to quit
echo. Delete project:
set /p project=
if "%project%" == "quit" goto menu
cd "Projects"
rmdir /s /q "%project%"
cd ../
goto menu

:load
cls
echo.
echo.
echo.
echo. Type quit to quit
echo. Choose project to load:
set /p project=
cd "Projects/%project%"
if exist engine.bat goto editor2
if not exist engine.bat goto editor1
goto menu

:editor1
cls
echo.    =====================================================================================================================================================
echo.    =                                                              Marble Codeless Editor                                                               =
echo.    =====================================================================================================================================================
echo.    =====================================================================================================================================================
echo.    =====================================================================================================================================================
echo.    =                                                          =                                                         =            =TOOL=            =
echo.    =  Type "r" to run your game immediately                    =                                                        ================================
echo.    =                                                            =                                                       =                              =
echo.    =                                                             =                                                      =                              =
echo.    =                                                              =                                                     =                              =
echo.    =                                                               =                                                    =                              =
echo.    =                                                                =                                                   =   1.Change title             =
echo.    =                                                                 =                                                  =                              =
echo.    =                                =       =     ====                =                                                 =                              =
echo.    =                                 =     =     =    =                =                                                =   2.Color palettes           =
echo.    =                                  =   =     =      =                =                                               =                              =
echo.    =                                   = =      =      =                 =                                              =                              =
echo.    =                                    =       =      =                 =                                              =   3.Reset                    =
echo.    =                                   = =      =      =                =                                               =                              =
echo.    =                                  =   =     =      =               =                                                =                              =
echo.    =                                 =     =     =    =               =                                                 =   4.Change console's width   =
echo.    =                                =       =     ====               =                                                  =                              =
echo.    =                                                                =                                                   =                              =
echo.    =                                                               =                                                    =   5.Change console's height  =
echo.    =                                                              =                                                     =                              =
echo.    =                                                             =                                                      =                              =
echo.    =                                                            =                                                       =   6.Exit                     =
echo.    =                                                           =                                                        =                              =
echo.    =                                                          =                                                         =                              =
echo.    =                                                         =                                                          =                              =
echo.    =                                                        =                                                           =                              =
echo.    =                                                       =                                                            =                              =
echo.    =====================================================================================================================================================
@CHOICE /C:123456r /N
if errorlevel 7 goto run
if errorlevel 6 goto exittomenu
if errorlevel 5 goto changeheight
if errorlevel 4 goto changewidth
if errorlevel 3 goto resetedit
if errorlevel 2 goto changecolor
if errorlevel 1 goto changetitle
goto menu

:run
start tictactoe.bat
goto editor1

:run
start game.bat
goto editor2

:changecolor
cls
echo.
echo.  COLOR HEX CODE
echo.
echo. 0 = Black       8 = Gray
echo. 1 = Blue        9 = Light Blue
echo. 2 = Green       A = Light Green
echo. 3 = Aqua        B = Light Aqua
echo. 4 = Red         C = Light Red
echo. 5 = Purple      D = Light Purple
echo. 6 = Yellow      E = Light Yellow
echo. 7 = White       F = Bright White
echo.
echo.
echo Enter 2 color hex code to create a color palette:
set /p color=
echo set color=%color%>>core.bat
goto editor1

:changetitle
cls
echo.
echo.
echo.
echo Enter game title:
set /p title=
echo set title=%title%>>core.bat
goto editor1

:changeheight
cls
echo.
echo.
echo.
echo Enter game's console's height:
set /p height=
echo set height=%height%>>core.bat
goto editor1

:changewidth
cls
echo.
echo.
echo.
echo Enter game's console's width:
set /p width=
echo set width=%width%>>core.bat
goto editor1

:resetedit
cls
echo set color=f0>core.bat
echo set title=game>>core.bat
echo set width=70>>core.bat
echo set height=30>>core.bat
goto editor1

:exittomenu
cls
cd ../../
goto menu

:changecolor2
cls
echo.
echo.  COLOR HEX CODE
echo.
echo. 0 = Black       8 = Gray
echo. 1 = Blue        9 = Light Blue
echo. 2 = Green       A = Light Green
echo. 3 = Aqua        B = Light Aqua
echo. 4 = Red         C = Light Red
echo. 5 = Purple      D = Light Purple
echo. 6 = Yellow      E = Light Yellow
echo. 7 = White       F = Bright White
echo.
echo.
echo Enter 2 color hex code to create a color palette:
set /p color=
echo set color=%color%>>core.bat
goto editor2

:changetitle2
cls
echo.
echo.
echo.
echo Enter game title:
set /p title=
echo set title=%title%>>core.bat
goto editor2

:changeheight2
cls
echo.
echo.
echo.
echo Enter game's console's height:
set /p height=
echo set height=%height%>>core.bat
goto editor2

:changewidth2
cls
echo.
echo.
echo.
echo Enter game's console's width:
set /p width=
echo set width=%width%>>core.bat
goto editor2

:resetedit2
cls
echo set color=f0>core.bat
echo set title=game>>core.bat
echo set width=70>>core.bat
echo set height=30>>core.bat
goto editor2

:editor2
cls
echo.    =====================================================================================================================================================
echo.    =                                                              Marble Codeless Editor                                                               =
echo.    =====================================================================================================================================================
echo.    =====================================================================================================================================================
echo.    =====================================================================================================================================================
echo.    =                                                                                     =                            =TOOL=                           =
echo.    =  Type "r" to run your game immediately                                              ===============================================================
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   1.Change textures           =   9.Exit                    =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   2.Change positions          =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   3.Change wall hitboxes      =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   4.Change game's title       =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   5.Color palettes            =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   6.Change console's width    =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   7.Change console's height   =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =                               =                             =
echo.    =                                                                                     =   8.Reset                     =                             =
echo.    =                                                                                     =                               =                             =
echo.    =====================================================================================================================================================
@CHOICE /C:123456789r /N
if errorlevel 10 goto run2
if errorlevel 9 goto exittomenu
if errorlevel 8 goto resetedit2
if errorlevel 7 goto changeheight2
if errorlevel 6 goto changewidth2
if errorlevel 5 goto changecolor2
if errorlevel 4 goto changetitle2
if errorlevel 3 goto changewall
if errorlevel 2 goto changepost
if errorlevel 1 goto changetexture

:changetexture
cls
echo.
echo.
echo.                   Edit textures:
echo.
echo.                  1.Character texture
echo.
echo.                  2.Specific position's texture
echo.
echo.                  3.Barrier texture
echo.
echo.                  4.Floor texture
echo.
echo.                  5.Exit
echo.
@CHOICE /C:12345 /N
if errorlevel 5 goto editor2
if errorlevel 4 goto changetexturefloor
if errorlevel 3 goto changetexturebarrier
if errorlevel 2 goto changetexturewall
if errorlevel 1 goto changetexturecharacter

:changetexturecharacter
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the texture of your character
echo.
set /p texture=
if "%texture%" == "quit" goto editor2
echo set character=%texture%>>core.bat
goto changetexturecharacter

:changetexturebarrier
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the texture of the barrier
echo.
set /p texture=
if "%texture%" == "quit" goto editor2
echo set wall=%texture%>>core.bat
goto changetexturebarrier

:changetexturefloor
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the texture of the floor
echo.
set /p texture=
if "%texture%" == "quit" goto editor2
echo set floortexture=%texture%>>core.bat
goto changetexturefloor

:changetexturewall
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the texture of a specific position
echo.
echo.
echo                    x1y1 x2y1 x3y1 x4y1 x5y1 x6y1 x7y1 x8y1 x9y1 x10y1 x11y1
echo                    x1y2 x2y2 x3y2 x4y2 x5y2 x6y2 x7y2 x8y2 x9y2 x10y2 x11y2
echo                    x1y3 x2y3 x3y3 x4y3 x5y3 x6y3 x7y3 x8y3 x9y3 x10y3 x11y3
echo                    x1y4 x2y4 x3y4 x4y4 x5y4 x6y4 x7y4 x8y4 x9y4 x10y4 x11y4
echo                    x1y5 x2y5 x3y5 x4y5 x5y5 x6y5 x7y5 x8y5 x9y5 x10y5 x11y5
echo                    x1y6 x2y6 x3y6 x4y6 x5y6 x6y6 x7y6 x8y6 x9y6 x10y6 x11y6
echo                    x1y7 x2y7 x3y7 x4y7 x5y7 x6y7 x7y7 x8y7 x9y7 x10y7 x11y7
echo                    x1y8 x2y8 x3y8 x4y8 x5y8 x6y8 x7y8 x8y8 x9y8 x10y8 x11y8
echo                    x1y9 x2y9 x3y9 x4y9 x5y9 x6y9 x7y9 x8y9 x9y9 x10y9 x11y9
echo                    x1y10 x2y10 x3y10 x4y10 x5y10 x6y10 x7y10 x8y10 x9y10 x10y10 x11y10
echo                    x1y11 x2y11 x3y11 x4y11 x5y11 x6y11 x7y11 x8y11 x9y11 x10y11 x11y11
echo                    x1y12 x2y12 x3y12 x4y12 x5y12 x6y12 x7y12 x8y12 x9y12 x10y12 x11y12
echo                    x1y13 x2y13 x3y13 x4y13 x5y13 x6y13 x7y13 x8y13 x9y13 x10y13 x11y13
echo                    x1y14 x2y14 x3y14 x4y14 x5y14 x6y14 x7y14 x8y14 x9y14 x10y14 x11y14
echo                    x1y15 x2y15 x3y15 x4y15 x5y15 x6y15 x7y15 x8y15 x9y15 x10y15 x11y15
echo.
set /p position=Position:
if "%position%" == "quit" goto editor2
set /p texture=Texture:
if "%texture%" == "quit" goto editor2
echo set %position%=%texture%>>core.bat
goto changetexturewall

:changewall
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Add a wall hitbox to a position
echo.
echo.
echo                    x1y1 x2y1 x3y1 x4y1 x5y1 x6y1 x7y1 x8y1 x9y1 x10y1 x11y1
echo                    x1y2 x2y2 x3y2 x4y2 x5y2 x6y2 x7y2 x8y2 x9y2 x10y2 x11y2
echo                    x1y3 x2y3 x3y3 x4y3 x5y3 x6y3 x7y3 x8y3 x9y3 x10y3 x11y3
echo                    x1y4 x2y4 x3y4 x4y4 x5y4 x6y4 x7y4 x8y4 x9y4 x10y4 x11y4
echo                    x1y5 x2y5 x3y5 x4y5 x5y5 x6y5 x7y5 x8y5 x9y5 x10y5 x11y5
echo                    x1y6 x2y6 x3y6 x4y6 x5y6 x6y6 x7y6 x8y6 x9y6 x10y6 x11y6
echo                    x1y7 x2y7 x3y7 x4y7 x5y7 x6y7 x7y7 x8y7 x9y7 x10y7 x11y7
echo                    x1y8 x2y8 x3y8 x4y8 x5y8 x6y8 x7y8 x8y8 x9y8 x10y8 x11y8
echo                    x1y9 x2y9 x3y9 x4y9 x5y9 x6y9 x7y9 x8y9 x9y9 x10y9 x11y9
echo                    x1y10 x2y10 x3y10 x4y10 x5y10 x6y10 x7y10 x8y10 x9y10 x10y10 x11y10
echo                    x1y11 x2y11 x3y11 x4y11 x5y11 x6y11 x7y11 x8y11 x9y11 x10y11 x11y11
echo                    x1y12 x2y12 x3y12 x4y12 x5y12 x6y12 x7y12 x8y12 x9y12 x10y12 x11y12
echo                    x1y13 x2y13 x3y13 x4y13 x5y13 x6y13 x7y13 x8y13 x9y13 x10y13 x11y13
echo                    x1y14 x2y14 x3y14 x4y14 x5y14 x6y14 x7y14 x8y14 x9y14 x10y14 x11y14
echo                    x1y15 x2y15 x3y15 x4y15 x5y15 x6y15 x7y15 x8y15 x9y15 x10y15 x11y15
echo.
set /p position=Position:
if "%position%" == "quit" goto editor2
set /p texture=Wall ids (walllimit1, walllimit2, walllimit3,..., walllimit165):
if "%wallid%" == "quit" goto editor2
echo set %wallid%=%position%>>core.bat
goto changewall

:changepost
cls
echo.
echo.
echo.                   Edit positions:
echo.
echo.                  1.Spawn position
echo.
echo.                  2.Win position
echo.
echo.                  5.Exit
echo.
@CHOICE /C:123 /N
if errorlevel 3 goto editor2
if errorlevel 2 goto changepositionwin
if errorlevel 1 goto changepositionspawn

:changepositionspawn
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the spawn position
echo.
set /p xspawn=X Position:
if "%xspawn%" == "quit" goto editor2
set /p yspawn=Y Position:
if "%yspawn%" == "quit" goto editor2
echo set xspawn=%xspawn%>>core.bat
echo set yspawn=%yspawn%>>core.bat
goto changepositionspawn

:changepositionwin
cls
echo.
echo.                  Type quit to quit
echo.
echo.                  Change the win position
echo                    x1y1 x2y1 x3y1 x4y1 x5y1 x6y1 x7y1 x8y1 x9y1 x10y1 x11y1
echo                    x1y2 x2y2 x3y2 x4y2 x5y2 x6y2 x7y2 x8y2 x9y2 x10y2 x11y2
echo                    x1y3 x2y3 x3y3 x4y3 x5y3 x6y3 x7y3 x8y3 x9y3 x10y3 x11y3
echo                    x1y4 x2y4 x3y4 x4y4 x5y4 x6y4 x7y4 x8y4 x9y4 x10y4 x11y4
echo                    x1y5 x2y5 x3y5 x4y5 x5y5 x6y5 x7y5 x8y5 x9y5 x10y5 x11y5
echo                    x1y6 x2y6 x3y6 x4y6 x5y6 x6y6 x7y6 x8y6 x9y6 x10y6 x11y6
echo                    x1y7 x2y7 x3y7 x4y7 x5y7 x6y7 x7y7 x8y7 x9y7 x10y7 x11y7
echo                    x1y8 x2y8 x3y8 x4y8 x5y8 x6y8 x7y8 x8y8 x9y8 x10y8 x11y8
echo                    x1y9 x2y9 x3y9 x4y9 x5y9 x6y9 x7y9 x8y9 x9y9 x10y9 x11y9
echo                    x1y10 x2y10 x3y10 x4y10 x5y10 x6y10 x7y10 x8y10 x9y10 x10y10 x11y10
echo                    x1y11 x2y11 x3y11 x4y11 x5y11 x6y11 x7y11 x8y11 x9y11 x10y11 x11y11
echo                    x1y12 x2y12 x3y12 x4y12 x5y12 x6y12 x7y12 x8y12 x9y12 x10y12 x11y12
echo                    x1y13 x2y13 x3y13 x4y13 x5y13 x6y13 x7y13 x8y13 x9y13 x10y13 x11y13
echo                    x1y14 x2y14 x3y14 x4y14 x5y14 x6y14 x7y14 x8y14 x9y14 x10y14 x11y14
echo                    x1y15 x2y15 x3y15 x4y15 x5y15 x6y15 x7y15 x8y15 x9y15 x10y15 x11y15
echo.
echo.
set /p winningpost=Win Position:
if "%winningpost%" == "quit" goto editor2
echo set winningpost=%winningpost%>>core.bat
goto changepositionwin