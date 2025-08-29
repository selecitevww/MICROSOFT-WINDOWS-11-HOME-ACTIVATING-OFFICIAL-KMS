@echo on

REM      BATCH FILE

chcp 65001

cls

color 70

setlocal EnableDelayedExpansion
:loop
CLS & CLS && cd %windir%\system32
color B
CLS
CLS & CLS && set /a "key2=%date%"
CLS && echo Введите ключ активации Windows: && set /p key1=
CLS
CLS & CLS && slmgr /rilc
CLS & CLS && slmgr /upk
CLS & CLS && slmgr /cpky
CLS & CLS && slmgr /ckms
CLS & CLS && cscript %windir%\system32\slmgr.vbs /rilc
CLS & CLS && cscript %windir%\system32\slmgr.vbs /upk
CLS & CLS && cscript %windir%\system32\slmgr.vbs /cpky
CLS & CLS && cscript %windir%\system32\slmgr.vbs /ckms
CLS & CLS && sc config Winmgmt start=demand & net start Winmgmt
CLS & CLS && sc config LicenseManager start= auto & net start LicenseManager
CLS & CLS && sc config wuauserv start= auto & net start wuauserv
CLS & CLS && cscript %windir%\system32\sc config Winmgmt start=demand & net start Winmgmt
CLS & CLS && cscript %windir%\system32\sc config LicenseManager start= auto & net start LicenseManager
CLS & CLS && cscript %windir%\system32\sc config wuauserv start= auto & net start wuauserv
@echo on&mode con: cols=20 lines=2
@mode con: cols=100 lines=30
CLS & CLS && clipup /v /o /altto c:\
CLS & CLS && clipup -v -o /altto c:\
CLS
CLS & CLS
CLS & CLS && slmgr /ipk %key1%
CLS && pause
CLS & CLS && slmgr /skms-domain kms.digiboy.ir:1688 && CLS
CLS && pause
CLS & CLS && slmgr /skms kms.digiboy.ir:1688 && CLS
CLS && pause
CLS & CLS
CLS & CLS
CLS && pause
CLS & CLS && slmgr /ato & date 01.01.1980 && CLS
CLS & CLS && cscript %windir%\system32\slmgr.vbs /ato & date 01.01.1980 && CLS
CLS && TIMEOUT 0 && CLS 
CLS && pause
CLS & CLS
CLS & CLS
CLS & CLS
CLS & CLS && TIMEOUT 0 && CLS && TIMEOUT 0 && CLS && TIMEOUT 0 && CLS && TIMEOUT 0 && CLS 
CLS & CLS && echo %date% > "%~dp0%date%.md" && CLS 
CLS & CLS && echo File Created on home PC without Internet for own used. %date%. Developer structure command - Haponov P.V. > "%~dp0readme.md" && CLS 
CLS & CLS && cd "%~dp0" && CLS 
CLS & CLS && mkdir %date% && CLS 
CLS & CLS && start ms-settings:activation
CLS & CLS && date %key2%
CLS && pause
CLS & CLS && slmgr /skms-domain kms.digiboy.ir:444 && CLS
CLS & CLS && slmgr /skms kms.digiboy.ir:445 && CLS
goto loop
CLS & CLS & EXIT & CLS & CLS 
