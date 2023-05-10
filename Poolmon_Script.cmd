::@ECHO OFF 
:: Set folder destiantion of poolmon needs to be where the program is installed
SET POOLMON="C:\Program Files (x86)\Windows Kits\10\Tools\x64\Poolmon.exe"
:: Set output Directory for the logfiles
SET OUTDIR=C:\WINDOWS\TEMP
SET POOLTAG= "C:\Program Files (x86)\Windows Kits\10\Debuggers\x64\triage\pooltag.txt"
:: Configure date so it can be used in logfile name 
SET YEAR=%DATE:~10,4%
SET DAY=%DATE:~7,2%
SET MONTH=%DATE:~4,2%
SET HOUR=%TIME:~0,2%
IF /I %HOUR% LEQ 9 SET HOUR=0%HOUR:~1,1%
SET MINUTE=%TIME:~3,2%
SET SECOND=%TIME:~6,2%
SET DATE=%YEAR%-%DAY%-%MONTH%-%HOUR%-%MINUTE%-%SECOND%

::Run Poolmon with sorting by bytes and outputing to a log file 
:: /b means sort by byte 
:: -n <file> take a Pool snapshot and place it in the OUTDIR location

%POOLMON% /b /g %POOLTAG% -n %OUTDIR%\poolmon.%DATE%.log
::Pause for debug purpouses uncomment in order to confirm script run
::PAUSE