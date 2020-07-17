@echo off
color 0f
mode con cols=70 lines=30
title A sample for Marble Engine
:menu
echo. ====================================================================
echo.                        MARBLE SAMPLE GAME
echo.
echo.
echo.
echo.                             LOADING...
echo.
ping localhost -n 2 >nul
:loadengine
call engine.bat