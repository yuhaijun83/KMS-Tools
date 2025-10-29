@ECHO OFF
REM ############################################
REM Create By Yu Haijun
REM Ver 25.10
REM https://github.com/yuhaijun83/KMS-Tools
REM ############################################
COLOR 0A

@ECHO Installs vlmcsd as a Windows service with low privileges and logs everything to C:\Windows\System32\vlmcsd.log
@ECHO.

SET CORRENT_PATH=%~dp0
SET KMS_PORT=1688

:LABEL_PORT
@ECHO Enter the Port of the KMS ^(default: 1688^):
SET /P PORT_INPUT=
IF "%PORT_INPUT%" == "" (
    REM Do Nothing
) ELSE IF "%PORT_INPUT%" GEQ "65535" (
    CLS
    @ECHO The entered port number is greater than 65535. Please enter it again...
    GOTO LABEL_PORT
) ELSE (
    SET KMS_PORT=%PORT_INPUT%
)

REM @ECHO.
REM @ECHO Excluded TCP port range
REM netsh int ipv4 show excludedportrange protocol=tcp

NET STOP vlmcsd > NUL

powershell -Command "Add-MpPreference -ExclusionProcess 'C:\Windows\System32\vlmcsd.exe'" > NUL

netsh advfirewall firewall add rule name="Allow_vlmcsd_In" dir=in action=allow program="C:\Windows\System32\vlmcsd.exe" enable=yes > NUL
netsh advfirewall firewall add rule name="Allow_vlmcsd_Out" dir=out action=allow program="C:\Windows\System32\vlmcsd.exe" enable=yes > NUL

COPY /Y "%CORRENT_PATH%vlmcsd" C:\Windows\System32\vlmcsd.exe > NUL
CD \
C:
vlmcsd.exe -S > NUL
vlmcsd.exe -s -P %KMS_PORT% -l C:\Windows\System32\vlmcsd.log

@ECHO.
NET START vlmcsd
@ECHO ON

PAUSE
