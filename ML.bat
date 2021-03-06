@echo off
title Marble Launcher
color 57
mode con cols=157 lines=35
:menu
cls
echo.    =====================================================================================================================================================
echo.    =                    =                                                                     +                                                        =
echo.    =   Marble Launcher  =                    Codeless - Opensource - Free -Easy to use       +                                                         =
echo.    =                    =                                                                   +                                                          =
echo.    =++++++++++++++++++++=                                                                  +                                                           =
echo.    =                    =                                                                 +     Wanna create games now? We've got you covered!         =
echo.    =                    =                                                                +                                                             =
echo.    =                    ================================================================================================================================
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                          1.Open Marble's Codeless Editor                                                     =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                           2.Open Marble's Engine Folder                                                      =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                              3.Open projects' folder                                                         =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                  4.Run Examples                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                     5.Credit                                                                 =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                     6.Github                                                                 =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =====================================================================================================================================================
@CHOICE /C:123456 /N
if errorlevel 6 goto github
if errorlevel 5 goto credit
if errorlevel 4 goto runexample
if errorlevel 3 goto openprojects
if errorlevel 2 goto runengine
if errorlevel 1 goto runeditor
goto menu

:openprojects
cd "MarbleEditor"
start Projects
cd ../
goto menu

:github
start https://github.com/nguyenphuminh/Marble-Engine
goto menu

:credit
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                                     Programmer:
echo.
echo                                                                   Nguyen Phu Minh
echo.
echo.
echo.
echo.                                        
echo.
echo.
echo.                                                             Press any key to continue...
echo.                                                                                   
pause >nul                             
goto menu

:runeditor
cls
cd "MarbleEditor"
start MarbleEditor.exe
cd ../
goto menu

:runengine
cls
start Marble
goto menu

:runexample
cls
echo.    =====================================================================================================================================================
echo.    =                    =                                                                     +                                                        =
echo.    =   Marble Launcher  =                    Codeless - Opensource - Free -Easy to use       +                                                         =
echo.    =                    =                                                                   +                                                          =
echo.    =++++++++++++++++++++=                                                                  +                                                           =
echo.    =                    =                                                                 +     Wanna create games now? We've got you covered!         =
echo.    =                    =                                                                +                                                             =
echo.    =                    ================================================================================================================================
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                          1.Open a Tic Tac Toe example                                                        =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                           2.Open a Maze game example                                                         =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                   3.Go back                                                                  =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                     		                                                                 =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =====================================================================================================================================================
@CHOICE /C:123 /N
if errorlevel 3 goto menu
if errorlevel 2 goto maze
if errorlevel 1 goto tictactoe
goto runexample

:tictactoe
cls
cd "Examples/tictactoe"
start game.bat
cd ../../
goto runexample

:maze
cls
cd "Examples/sample"
start game.bat
cd ../../
goto runexample