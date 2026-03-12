@echo off
cd /d %~dp0

REM ########## Kullanıcı Ayarları ##########
set "POOL=stratum+tcp://nexa.2miners.com:5050"
set "WALLET=nexa:nqtsq5g5l2vrxqt4wydwx7d7w4m20dt5y36pe72xyynu049s"
set "CORELOCK=1450"
set "MEMLOCK=5001"
set "COREOFFSET=150"
set "EXTRAPARAMETERS=--apiport 8020"
REM ########## Ayarlar Bitti ##########

REM lolMiner çalıştır
lolMiner.exe --algo NEXA --pool %POOL% --user %WALLET% --cclk %CORELOCK% --mclk %MEMLOCK% --coff %COREOFFSET% --watchdog exit %EXTRAPARAMETERS%

pause