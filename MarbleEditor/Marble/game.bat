@echo off
color 0f
mode con cols=70 lines=30
title Game
:menu
echo. ====================================================================
echo.                        
echo.
echo.
echo.
echo.                             LOADING...
echo.
ping localhost -n 2 >nul
:loadengine
call engine.bat