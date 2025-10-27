@ECHO OFF
REM ############################################
REM Create By Yu Haijun
REM Ver 25.10
REM https://github.com/yuhaijun83/KMS
REM ############################################
COLOR 0A

SET KMS_HOST_LIST=s1.kms.cx,^
win.freekms.cn,^
kms.srv.crsoo.com,^
skms.netnr.eu.org,^
kms.micaesoft.com,^
kms.8b5.cn,^
kms.litbear.cn,^
kms.mrxn.net,^
kms.sixyin.com,^
kms.bige0.com,^
kms.vmem.top,^
kms.loli.best,^
win.kms.pub,^
kms.org.cn,^
kms.03k.org,^
kms.zhi.fun,^
kms.343.re,^
kms.cgtsoft.com,^
kms.akams.cn,^
kms.digiboy.ir,^
kms.wxlost.com,^
windows.kms.app,^
kms-default.cangshui.net,^
kms-shanghai01.cangshui.net

:LABEL_TYPE
@ECHO Enter the number of the KMS type ^(default: 2^):
@ECHO ###########################################################
@ECHO   1. Use a custom activation server
@ECHO   2. Use another free activation server
@ECHO ###########################################################
SET KMS_TYPE_INPUT=
SET /P KMS_TYPE_INPUT=
IF "%KMS_TYPE_INPUT%" == "" (
    SET KMS_TYPE_INPUT=2
) ELSE IF "%KMS_TYPE_INPUT%" == "1" (
    REM Do Nothing
) ELSE IF "%KMS_TYPE_INPUT%" == "2" (
    REM Do Nothing
) ELSE (
    CLS
    @ECHO Invalid input! Please try again...
    GOTO LABEL_TYPE
)

IF "%KMS_TYPE_INPUT%" == "1" (
    @ECHO Use a custom activation server...
    GOTO LABEL_HOST
) ELSE (
    @ECHO Use another free activation server...
    GOTO LABEL_OSLIST
)

:LABEL_HOST
@ECHO Please enter the KMS domain name ^(e.g., kms.microsoft.com^):
@ECHO ^(0. Return to the previous menu^)
SET KMS_HOST_INPUT=
SET /P KMS_HOST_INPUT=
SET KMS_HOST_ACTIVE=
IF "%KMS_HOST_INPUT%" == "" (
    CLS
    @ECHO Invalid input! Please try again...
    GOTO LABEL_HOST
) ELSE IF "%KMS_HOST_INPUT%" == "0" (
    CLS
    @ECHO Return to the previous menu...
    GOTO LABEL_TYPE
) ELSE (
    SET KMS_HOST_ACTIVE=%KMS_HOST_INPUT%
)

:LABEL_PORT
@ECHO Please enter the KMS port ^(default: 1688^):
@ECHO ^(0. Return to the previous menu^)
SET KMS_PORT_ACTIVE=1688
SET KMS_PORT_INPUT=
SET /P KMS_PORT_INPUT=
IF "%KMS_PORT_INPUT%" == "" (
    REM Do Nothing
) ELSE IF "%KMS_PORT_INPUT%" == "0" (
    CLS
    @ECHO Return to the previous menu...
    GOTO LABEL_HOST
) ELSE (
    SET KMS_PORT_ACTIVE=%KMS_PORT_INPUT%
)

@ECHO Your custom information will be used for activation...
@ECHO KMS name: %KMS_HOST_ACTIVE%
@ECHO KMS port: %KMS_PORT_ACTIVE%

:LABEL_OSLIST
@ECHO Enter the number of the system to activate ^(default: 99^):
@ECHO #################################################################################
@ECHO   1. Windows 10 / 11 Professional
@ECHO   2. Windows 10 / 11 Enterprise
@ECHO   3. Windows 10 / 11 Professional Workstation
@ECHO   4. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
@ECHO   5. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
@ECHO   6. Windows Server 2022 Standard
@ECHO   7. Windows Server 2022 Datacenter
@ECHO   8. Windows Server 2025 Standard
@ECHO   9. Windows Server 2025 Datacenter
@ECHO  99. Automatic OS type detection
@ECHO   0. Return to the previous menu
@ECHO #################################################################################
SET KMS_KEY_ACTIVE=
SET OS_TYPE_ACTIVE=
SET /P OS_TYPE_ACTIVE=
IF "%OS_TYPE_ACTIVE%" == "" (
    REM 99. Automatic OS type detection
    REM SET OS_TYPE_ACTIVE=99
    GOTO LABEL_OS_AUTO
) ELSE IF "%OS_TYPE_ACTIVE%" == "1" (
    REM 1. Windows 10 / 11 Professional
    SET KMS_KEY_ACTIVE=W269N-WFGWX-YVC9B-4J6C9-T83GX
) ELSE IF "%OS_TYPE_ACTIVE%" == "2" (
    REM 2. Windows 10 / 11 Enterprise
    SET KMS_KEY_ACTIVE=NPPR9-FWDCX-D2C8J-H872K-2YT43
) ELSE IF "%OS_TYPE_ACTIVE%" == "3" (
    REM 3. Windows 10 / 11 Professional Workstation
    SET KMS_KEY_ACTIVE=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
) ELSE IF "%OS_TYPE_ACTIVE%" == "4" (
    REM 4. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
) ELSE IF "%OS_TYPE_ACTIVE%" == "5" (
    REM 5. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
) ELSE IF "%OS_TYPE_ACTIVE%" == "6" (
    REM 6. Windows Server 2022 Standard
    SET KMS_KEY_ACTIVE=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
) ELSE IF "%OS_TYPE_ACTIVE%" == "7" (
    REM 7. Windows Server 2022 Datacenter
    SET KMS_KEY_ACTIVE=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
) ELSE IF "%OS_TYPE_ACTIVE%" == "8" (
    REM 8. Windows Server 2025 Standard
    SET KMS_KEY_ACTIVE=TVRH6-WHNXV-R9WG3-9XRFY-MY832
) ELSE IF "%OS_TYPE_ACTIVE%" == "9" (
    REM 9. Windows Server 2025 Datacenter
    SET KMS_KEY_ACTIVE=D764K-2NDRG-47T6Q-P8T8W-YP6DF
) ELSE IF "%OS_TYPE_ACTIVE%" == "99" (
    REM 99. Automatic OS type detection
    REM SET OS_TYPE_ACTIVE=99
    GOTO LABEL_OS_AUTO
) ELSE IF "%OS_TYPE_ACTIVE%" == "0" (
    CLS
    @ECHO Return to the previous menu...
    GOTO LABEL_TYPE
) ELSE (
    CLS
    ECHO Invalid input! Please try again...
    GOTO LABEL_OSLIST
)

:LABEL_OS_AUTO
SET OS_NAME=
FOR /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') DO SET OS_NAME=%%j
@ECHO Detected operating system version:
@ECHO %OS_NAME%
ECHO.

IF "%OS_NAME%" == "Windows 10 Pro" (
    REM 1. Windows 10 / 11 Professional
    SET KMS_KEY_ACTIVE=W269N-WFGWX-YVC9B-4J6C9-T83GX
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise" (
    REM 2. Windows 10 / 11 Enterprise
    SET KMS_KEY_ACTIVE=NPPR9-FWDCX-D2C8J-H872K-2YT43
) ELSE IF "%OS_NAME%" == "Windows 10 Pro for Workstations" (
    REM 3. Windows 10 / 11 Professional Workstation
    SET KMS_KEY_ACTIVE=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2019" (
    REM 4. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2021" (
    REM 4. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2024" (
    REM 4. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
) ELSE IF "%OS_NAME%" == "Windows 10 IoT Enterprise LTSC 2021" (
    REM 5. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
) ELSE IF "%OS_NAME%" == "Windows 10 IoT Enterprise LTSC 2024" (
    REM 5. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
) ELSE IF "%OS_NAME%" == "Windows Server 2022 Standard" (
    REM 6. Windows Server 2022 Standard
    SET KMS_KEY_ACTIVE=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
) ELSE IF "%OS_NAME%" == "Windows Server 2022 Datacenter" (
    REM 7. Windows Server 2022 Datacenter
    SET KMS_KEY_ACTIVE=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
)  ELSE IF "%OS_NAME%" == "Windows Server 2025 Standard" (
    REM 8. Windows Server 2025 Standard
    SET KMS_KEY_ACTIVE=TVRH6-WHNXV-R9WG3-9XRFY-MY832
) ELSE IF "%OS_NAME%" == "Windows Server 2025 Datacenter" (
    REM 9. Windows Server 2025 Datacenter
    SET KMS_KEY_ACTIVE=D764K-2NDRG-47T6Q-P8T8W-YP6DF
) ELSE (
    @ECHO This version ^(%OS_NAME%^) is currently not supported.
    GOTO LABEL_END
) 

IF "%KMS_TYPE_INPUT%" == "1" (
    GOTO LABEL_ACTIVE_CHECK_1
) ELSE (
    GOTO LABEL_ACTIVE_CHECK_2
)

:LABEL_ACTIVE_CHECK_1
@ECHO Checking if port %KMS_PORT_ACTIVE% on %KMS_HOST_ACTIVE% is open...
powershell -Command "if ((Test-NetConnection %KMS_HOST_ACTIVE% -Port %KMS_PORT_ACTIVE%).TcpTestSucceeded) {exit 0} else {exit 1}"
IF %ERRORLEVEL% == 0 (
    @ECHO %KMS_HOST_ACTIVE% is active and ready to provide activation services...
    GOTO LABEL_ACTIVE_RUN
) ELSE (
    @ECHO %KMS_HOST_ACTIVE% is not active and ready to provide activation services...
    GOTO LABEL_TYPE
)

:LABEL_ACTIVE_CHECK_2
SET KMS_PORT_ACTIVE=1688
SETLOCAL ENABLEDELAYEDEXPANSION
SET KMS_HOST_TMP=
FOR %%A IN (%KMS_HOST_LIST%) do (
    SET KMS_HOST_TMP=%%A

    ECHO Checking if port %KMS_PORT_ACTIVE% on !KMS_HOST_TMP! is open...
    powershell -Command "if ((Test-NetConnection !KMS_HOST_TMP! -Port %KMS_PORT_ACTIVE%).TcpTestSucceeded) {exit 0} else {exit 1}"

    IF !ERRORLEVEL! == 0 (
        ECHO !KMS_HOST_TMP! is active and ready to provide activation services...
        SET KMS_HOST_ACTIVE=!KMS_HOST_TMP!
        GOTO LABEL_ACTIVE_RUN
    )
)

:LABEL_ACTIVE_RUN
@ECHO Starting activation...
IF "%KMS_PORT_ACTIVE%" == "1688" (
    slmgr /skms %KMS_HOST_ACTIVE%
) ELSE (
    slmgr /skms %KMS_HOST_ACTIVE%:%KMS_PORT_ACTIVE%
)
REM slmgr.vbs /upk
REM slmgr.vbs /cpky
slmgr /ipk %KMS_KEY_ACTIVE%
slmgr /ato
REM slmgr /dlv
REM slmgr /dli
REM slmgr /xpr

:LABEL_END
PAUSE
