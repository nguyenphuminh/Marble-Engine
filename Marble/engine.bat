@echo off
:preload
if not exist "core.bat" goto filesmissing
if not exist "redofloor.bat" goto filesmissing
call core.bat
call redofloor.bat
for /L %%A in (1,1,165) DO (set walllimit%%A=0)
if "%xspawn%" == "" set xspawn=1
if "%yspawn%" == "" set yspawn=1
mode con cols=%width% lines=%height%
if "%soption%" == "tictactoe" goto tictactoe
if "%maze_scenewhenwin%" == "" set maze_scenewhenwin=initsetup
:initsetup
set xcoord=%xspawn%
set ycoord=%yspawn%
:displaysetup
cls
call redofloor.bat
call core.bat
set x%xcoord%y%ycoord%=%character%
if %winningpost% == x%xcoord%y%ycoord% goto %maze_scenewhenwin%
:display
cls
echo.
echo.                                                                                        
echo                        %wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%
echo                        %wall%%x1y1% %x2y1% %x3y1% %x4y1% %x5y1% %x6y1% %x7y1% %x8y1% %x9y1% %x10y1% %x11y1%%wall% 
echo                        %wall%%x1y2% %x2y2% %x3y2% %x4y2% %x5y2% %x6y2% %x7y2% %x8y2% %x9y2% %x10y2% %x11y2%%wall%
echo                        %wall%%x1y3% %x2y3% %x3y3% %x4y3% %x5y3% %x6y3% %x7y3% %x8y3% %x9y3% %x10y3% %x11y3%%wall%
echo                        %wall%%x1y4% %x2y4% %x3y4% %x4y4% %x5y4% %x6y4% %x7y4% %x8y4% %x9y4% %x10y4% %x11y4%%wall%
echo                        %wall%%x1y5% %x2y5% %x3y5% %x4y5% %x5y5% %x6y5% %x7y5% %x8y5% %x9y5% %x10y5% %x11y5%%wall%
echo                        %wall%%x1y6% %x2y6% %x3y6% %x4y6% %x5y6% %x6y6% %x7y6% %x8y6% %x9y6% %x10y6% %x11y6%%wall%
echo                        %wall%%x1y7% %x2y7% %x3y7% %x4y7% %x5y7% %x6y7% %x7y7% %x8y7% %x9y7% %x10y7% %x11y7%%wall%
echo                        %wall%%x1y8% %x2y8% %x3y8% %x4y8% %x5y8% %x6y8% %x7y8% %x8y8% %x9y8% %x10y8% %x11y8%%wall% 
echo                        %wall%%x1y9% %x2y9% %x3y9% %x4y9% %x5y9% %x6y9% %x7y9% %x8y9% %x9y9% %x10y9% %x11y9%%wall%
echo                        %wall%%x1y10% %x2y10% %x3y10% %x4y10% %x5y10% %x6y10% %x7y10% %x8y10% %x9y10% %x10y10% %x11y10%%wall%
echo                        %wall%%x1y11% %x2y11% %x3y11% %x4y11% %x5y11% %x6y11% %x7y11% %x8y11% %x9y11% %x10y11% %x11y11%%wall%
echo                        %wall%%x1y12% %x2y12% %x3y12% %x4y12% %x5y12% %x6y12% %x7y12% %x8y12% %x9y12% %x10y12% %x11y12%%wall%
echo                        %wall%%x1y13% %x2y13% %x3y13% %x4y13% %x5y13% %x6y13% %x7y13% %x8y13% %x9y13% %x10y13% %x11y13%%wall%
echo                        %wall%%x1y14% %x2y14% %x3y14% %x4y14% %x5y14% %x6y14% %x7y14% %x8y14% %x9y14% %x10y14% %x11y14%%wall%
echo                        %wall%%x1y15% %x2y15% %x3y15% %x4y15% %x5y15% %x6y15% %x7y15% %x8y15% %x9y15% %x10y15% %x11y15%%wall%
echo                        %wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%%wall%
choice /c swad /n
set direction=%errorlevel%
goto direction%direction%
:direction1
set /a ycoord=%ycoord%+1
if %ycoord% GTR 15 set /a ycoord=%ycoord%-1
set action=set /a ycoord=%ycoord%-1
goto wallaction
:direction2
set /a ycoord=%ycoord%-1
if %ycoord% LSS 1 set /a ycoord=%ycoord%+1
set action=set /a ycoord=%ycoord%+1
goto wallaction
:direction3
set /a xcoord=%xcoord%-1
if %xcoord% LSS 1 set /a xcoord=%xcoord%+1
set action=set /a xcoord=%xcoord%+1
goto wallaction
:direction4
set /a xcoord=%xcoord%+1
if %xcoord% GTR 11 set /a xcoord=%xcoord%-1
set action=set /a xcoord=%xcoord%-1
goto wallaction
:tictactoe
call tictactoe.bat
:wallaction
cls
if %walllimit1% == x%xcoord%y%ycoord% %action%
if %walllimit2% == x%xcoord%y%ycoord% %action%
if %walllimit3% == x%xcoord%y%ycoord% %action%
if %walllimit4% == x%xcoord%y%ycoord% %action%
if %walllimit5% == x%xcoord%y%ycoord% %action%
if %walllimit6% == x%xcoord%y%ycoord% %action%
if %walllimit7% == x%xcoord%y%ycoord% %action%
if %walllimit8% == x%xcoord%y%ycoord% %action%
if %walllimit9% == x%xcoord%y%ycoord% %action%
if %walllimit10% == x%xcoord%y%ycoord% %action%
if %walllimit11% == x%xcoord%y%ycoord% %action%
if %walllimit12% == x%xcoord%y%ycoord% %action%
if %walllimit13% == x%xcoord%y%ycoord% %action%
if %walllimit14% == x%xcoord%y%ycoord% %action%
if %walllimit15% == x%xcoord%y%ycoord% %action%
if %walllimit16% == x%xcoord%y%ycoord% %action%
if %walllimit17% == x%xcoord%y%ycoord% %action%
if %walllimit18% == x%xcoord%y%ycoord% %action%
if %walllimit19% == x%xcoord%y%ycoord% %action%
if %walllimit20% == x%xcoord%y%ycoord% %action%
if %walllimit21% == x%xcoord%y%ycoord% %action%
if %walllimit22% == x%xcoord%y%ycoord% %action%
if %walllimit23% == x%xcoord%y%ycoord% %action%
if %walllimit24% == x%xcoord%y%ycoord% %action%
if %walllimit25% == x%xcoord%y%ycoord% %action%
if %walllimit26% == x%xcoord%y%ycoord% %action%
if %walllimit27% == x%xcoord%y%ycoord% %action%
if %walllimit28% == x%xcoord%y%ycoord% %action%
if %walllimit29% == x%xcoord%y%ycoord% %action%
if %walllimit30% == x%xcoord%y%ycoord% %action%
if %walllimit31% == x%xcoord%y%ycoord% %action%
if %walllimit32% == x%xcoord%y%ycoord% %action%
if %walllimit33% == x%xcoord%y%ycoord% %action%
if %walllimit34% == x%xcoord%y%ycoord% %action%
if %walllimit35% == x%xcoord%y%ycoord% %action%
if %walllimit36% == x%xcoord%y%ycoord% %action%
if %walllimit37% == x%xcoord%y%ycoord% %action%
if %walllimit38% == x%xcoord%y%ycoord% %action%
if %walllimit39% == x%xcoord%y%ycoord% %action%
if %walllimit40% == x%xcoord%y%ycoord% %action%
if %walllimit41% == x%xcoord%y%ycoord% %action%
if %walllimit42% == x%xcoord%y%ycoord% %action%
if %walllimit43% == x%xcoord%y%ycoord% %action%
if %walllimit44% == x%xcoord%y%ycoord% %action%
if %walllimit45% == x%xcoord%y%ycoord% %action%
if %walllimit46% == x%xcoord%y%ycoord% %action%
if %walllimit47% == x%xcoord%y%ycoord% %action%
if %walllimit48% == x%xcoord%y%ycoord% %action%
if %walllimit49% == x%xcoord%y%ycoord% %action%
if %walllimit50% == x%xcoord%y%ycoord% %action%
if %walllimit51% == x%xcoord%y%ycoord% %action%
if %walllimit52% == x%xcoord%y%ycoord% %action%
if %walllimit53% == x%xcoord%y%ycoord% %action%
if %walllimit54% == x%xcoord%y%ycoord% %action%
if %walllimit55% == x%xcoord%y%ycoord% %action%
if %walllimit56% == x%xcoord%y%ycoord% %action%
if %walllimit57% == x%xcoord%y%ycoord% %action%
if %walllimit58% == x%xcoord%y%ycoord% %action%
if %walllimit59% == x%xcoord%y%ycoord% %action%
if %walllimit60% == x%xcoord%y%ycoord% %action%
if %walllimit61% == x%xcoord%y%ycoord% %action%
if %walllimit62% == x%xcoord%y%ycoord% %action%
if %walllimit63% == x%xcoord%y%ycoord% %action%
if %walllimit64% == x%xcoord%y%ycoord% %action%
if %walllimit65% == x%xcoord%y%ycoord% %action%
if %walllimit66% == x%xcoord%y%ycoord% %action%
if %walllimit67% == x%xcoord%y%ycoord% %action%
if %walllimit68% == x%xcoord%y%ycoord% %action%
if %walllimit69% == x%xcoord%y%ycoord% %action%
if %walllimit70% == x%xcoord%y%ycoord% %action%
if %walllimit71% == x%xcoord%y%ycoord% %action%
if %walllimit72% == x%xcoord%y%ycoord% %action%
if %walllimit73% == x%xcoord%y%ycoord% %action%
if %walllimit74% == x%xcoord%y%ycoord% %action%
if %walllimit75% == x%xcoord%y%ycoord% %action%
if %walllimit76% == x%xcoord%y%ycoord% %action%
if %walllimit77% == x%xcoord%y%ycoord% %action%
if %walllimit78% == x%xcoord%y%ycoord% %action%
if %walllimit79% == x%xcoord%y%ycoord% %action%
if %walllimit80% == x%xcoord%y%ycoord% %action%
if %walllimit81% == x%xcoord%y%ycoord% %action%
if %walllimit82% == x%xcoord%y%ycoord% %action%
if %walllimit83% == x%xcoord%y%ycoord% %action%
if %walllimit84% == x%xcoord%y%ycoord% %action%
if %walllimit85% == x%xcoord%y%ycoord% %action%
if %walllimit86% == x%xcoord%y%ycoord% %action%
if %walllimit87% == x%xcoord%y%ycoord% %action%
if %walllimit88% == x%xcoord%y%ycoord% %action%
if %walllimit89% == x%xcoord%y%ycoord% %action%
if %walllimit90% == x%xcoord%y%ycoord% %action%
if %walllimit91% == x%xcoord%y%ycoord% %action%
if %walllimit92% == x%xcoord%y%ycoord% %action%
if %walllimit93% == x%xcoord%y%ycoord% %action%
if %walllimit94% == x%xcoord%y%ycoord% %action%
if %walllimit95% == x%xcoord%y%ycoord% %action%
if %walllimit96% == x%xcoord%y%ycoord% %action%
if %walllimit97% == x%xcoord%y%ycoord% %action%
if %walllimit98% == x%xcoord%y%ycoord% %action%
if %walllimit99% == x%xcoord%y%ycoord% %action%
if %walllimit100% == x%xcoord%y%ycoord% %action%
if %walllimit101% == x%xcoord%y%ycoord% %action%
if %walllimit102% == x%xcoord%y%ycoord% %action%
if %walllimit103% == x%xcoord%y%ycoord% %action%
if %walllimit104% == x%xcoord%y%ycoord% %action%
if %walllimit105% == x%xcoord%y%ycoord% %action%
if %walllimit106% == x%xcoord%y%ycoord% %action%
if %walllimit107% == x%xcoord%y%ycoord% %action%
if %walllimit108% == x%xcoord%y%ycoord% %action%
if %walllimit109% == x%xcoord%y%ycoord% %action%
if %walllimit110% == x%xcoord%y%ycoord% %action%
if %walllimit111% == x%xcoord%y%ycoord% %action%
if %walllimit112% == x%xcoord%y%ycoord% %action%
if %walllimit113% == x%xcoord%y%ycoord% %action%
if %walllimit114% == x%xcoord%y%ycoord% %action%
if %walllimit115% == x%xcoord%y%ycoord% %action%
if %walllimit116% == x%xcoord%y%ycoord% %action%
if %walllimit117% == x%xcoord%y%ycoord% %action%
if %walllimit118% == x%xcoord%y%ycoord% %action%
if %walllimit119% == x%xcoord%y%ycoord% %action%
if %walllimit120% == x%xcoord%y%ycoord% %action%
if %walllimit121% == x%xcoord%y%ycoord% %action%
if %walllimit123% == x%xcoord%y%ycoord% %action%
if %walllimit124% == x%xcoord%y%ycoord% %action%
if %walllimit125% == x%xcoord%y%ycoord% %action%
if %walllimit126% == x%xcoord%y%ycoord% %action%
if %walllimit127% == x%xcoord%y%ycoord% %action%
if %walllimit128% == x%xcoord%y%ycoord% %action%
if %walllimit129% == x%xcoord%y%ycoord% %action%
if %walllimit130% == x%xcoord%y%ycoord% %action%
if %walllimit131% == x%xcoord%y%ycoord% %action%
if %walllimit132% == x%xcoord%y%ycoord% %action%
if %walllimit133% == x%xcoord%y%ycoord% %action%
if %walllimit134% == x%xcoord%y%ycoord% %action%
if %walllimit135% == x%xcoord%y%ycoord% %action%
if %walllimit136% == x%xcoord%y%ycoord% %action%
if %walllimit137% == x%xcoord%y%ycoord% %action%
if %walllimit138% == x%xcoord%y%ycoord% %action%
if %walllimit139% == x%xcoord%y%ycoord% %action%
if %walllimit140% == x%xcoord%y%ycoord% %action%
if %walllimit150% == x%xcoord%y%ycoord% %action%
if %walllimit151% == x%xcoord%y%ycoord% %action%
if %walllimit152% == x%xcoord%y%ycoord% %action%
if %walllimit153% == x%xcoord%y%ycoord% %action%
if %walllimit154% == x%xcoord%y%ycoord% %action%
if %walllimit155% == x%xcoord%y%ycoord% %action%
if %walllimit156% == x%xcoord%y%ycoord% %action%
if %walllimit157% == x%xcoord%y%ycoord% %action%
if %walllimit158% == x%xcoord%y%ycoord% %action%
if %walllimit159% == x%xcoord%y%ycoord% %action%
if %walllimit160% == x%xcoord%y%ycoord% %action%
if %walllimit161% == x%xcoord%y%ycoord% %action%
if %walllimit162% == x%xcoord%y%ycoord% %action%
if %walllimit163% == x%xcoord%y%ycoord% %action%
if %walllimit164% == x%xcoord%y%ycoord% %action%
if %walllimit165% == x%xcoord%y%ycoord% %action%
goto displaysetup
:filesmissing
cls
echo. The engine can not boot up successfully due to missing necessary files.
echo.
echo. ERROR NAME: 0a1
pause >nul