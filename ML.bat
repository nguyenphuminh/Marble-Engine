@echo off
title Marble Launcher
color 6f
mode con cols=157 lines=35
:menu
cls
echo.    =====================================================================================================================================================
echo.    =                    =                                                                     +                                                        =
echo.    =   Marble Launcher  =                    Codeless - Opensource - Free -Easy to use       +                                                         =
echo.    =                    =                                                                   +                                                          =
echo.    =++++++++++++++++++++=                                                                  +                                                           =
echo.    =                    =                                                                 +      Wanna create games now? We got you covered!           =
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
echo.    =                    =                                                  3.Run Examples                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                                                                                              =
echo.    =                    =                                                     4.Credit                                                                 =
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
@CHOICE /C:1234 /N
if errorlevel 4 goto credit
if errorlevel 3 goto runexample
if errorlevel 2 goto runengine
if errorlevel 1 goto runeditor
goto menu

:credit
cls
echo.
echo.
echo.
echo.
echo.
echo                                                                       =Staff=
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
echo.                                                              Press any key to continue...
echo.                                                                                   
pause >nul                             
goto menu

:runeditor
cls
cd "MarbleEditor"
start MB.bat
cd ../
goto menu

:runengine
cls
start Marble
goto menu

:runexample
cls
echo.    =====================================================================================================================================================
echo.    =                                                                Marble Launcher                                                                    =
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
echo.    =                                                         1.Open a Tic Tac Toe example                                                              =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                          2.Open a Maze game example                                                               =
echo.    =                                                                                                                                                   =
echo.    =                                                                                                                                                   =
echo.    =                                                                    3.Exit                                                                         =
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
