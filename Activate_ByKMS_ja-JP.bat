@ECHO OFF
REM ############################################
REM Create By Yu Haijun
REM Ver 25.10.29
REM https://github.com/yuhaijun83/KMS-Tools
REM ############################################
COLOR 0A

SET KMS_HOST_LIST=s1.kms.cx,^
kms.micaesoft.com,^
win.freekms.cn,^
kms.srv.crsoo.com,^
skms.netnr.eu.org,^
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
kms-shanghai01.cangshui.net,^
kms.lolico.moe,^
kms.lotro.cc,^
kms.luody.info,^
kms.moeclub.org,^
kms.qkeke.com,^
kms.tttal.com,^
kms8.MSGuides.com,^
zh.us.to

SET KMS_HOST_ACTIVE=
SET KMS_PORT_ACTIVE=
SET KMS_KEY_ACTIVE=

:LABEL_HOST_INPUT
@ECHO 使用するKMSサーバー名を入力してください（既定値：空）:
@ECHO Enterキーを押すだけでも、プログラムが自動的に設定します...
SET KMS_HOST_INPUT=
SET /P KMS_HOST_INPUT=
IF "%KMS_HOST_INPUT%" == "" (
    SET KMS_HOST_ACTIVE=
    GOTO LABEL_OS_LIST
) ELSE (
    SET KMS_HOST_ACTIVE=%KMS_HOST_INPUT%
    GOTO LABEL_PORT_INPUT
)

:LABEL_PORT_INPUT
@ECHO. 
@ECHO 使用するKMSサーバーのポート番号を入力してください（既定値：1688）:
@ECHO ^[0. 前のメニューに戻る^]
SET KMS_PORT_INPUT=
SET /P KMS_PORT_INPUT=
IF "%KMS_PORT_INPUT%" == "" (
    SET KMS_PORT_ACTIVE=1688
) ELSE IF "%KMS_PORT_INPUT%" == "0" (
    SET KMS_PORT_ACTIVE=
    CLS
    @ECHO 前のメニューに戻ります…
    @ECHO. 
    GOTO :LABEL_HOST_INPUT
) ELSE (
    SET KMS_PORT_ACTIVE=%KMS_PORT_INPUT%
)

:LABEL_OS_LIST
@ECHO.
@ECHO 使用しているオペレーティングシステムの種類を入力してください（既定値：99）:
@ECHO #################################################################################
@ECHO   10. Windows 10 / 11 Home
@ECHO   20. Windows 10 / 11 Professional
@ECHO   30. Windows 10 / 11 Enterprise
@ECHO   40. Windows 10 / 11 Professional Workstation
@ECHO   50. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
@ECHO   60. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
@ECHO   70. Windows Server 2022 Standard
@ECHO   71. Windows Server 2022 Datacenter
@ECHO   80. Windows Server 2025 Standard
@ECHO   81. Windows Server 2025 Datacenter
@ECHO   99. OSの種類を自動判定
@ECHO    0. 前のメニューに戻る
@ECHO #################################################################################
SET OS_TYPE_ACTIVE=
SET /P OS_TYPE_ACTIVE=
IF "%OS_TYPE_ACTIVE%" == "" (
    REM 99. Automatic OS type detection
    GOTO LABEL_OS_AUTO
) ELSE IF "%OS_TYPE_ACTIVE%" == "10" (
    REM 10. Windows 10 / 11 Home
    SET KMS_KEY_ACTIVE=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "20" (
    REM 20. Windows 10 / 11 Professional
    SET KMS_KEY_ACTIVE=W269N-WFGWX-YVC9B-4J6C9-T83GX
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "30" (
    REM 30. Windows 10 / 11 Enterprise
    SET KMS_KEY_ACTIVE=NPPR9-FWDCX-D2C8J-H872K-2YT43
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "40" (
    REM 40. Windows 10 / 11 Professional Workstation
    SET KMS_KEY_ACTIVE=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "50" (
    REM 50. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "60" (
    REM 60. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "70" (
    REM 70. Windows Server 2022 Standard
    SET KMS_KEY_ACTIVE=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "71" (
    REM 71. Windows Server 2022 Datacenter
    SET KMS_KEY_ACTIVE=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "80" (
    REM 80. Windows Server 2025 Standard
    SET KMS_KEY_ACTIVE=TVRH6-WHNXV-R9WG3-9XRFY-MY832
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "81" (
    REM 81. Windows Server 2025 Datacenter
    SET KMS_KEY_ACTIVE=D764K-2NDRG-47T6Q-P8T8W-YP6DF
    GOTO LABEL_OS_SELECT
) ELSE IF "%OS_TYPE_ACTIVE%" == "99" (
    REM 99. Automatic OS type detection
    GOTO LABEL_OS_AUTO
) ELSE IF "%OS_TYPE_ACTIVE%" == "0" (
    CLS
    @ECHO 前のメニューに戻ります…
    @ECHO. 
    GOTO LABEL_HOST_INPUT
) ELSE (
    CLS
    @ECHO 無効な入力です。再度入力してください…
    @ECHO. 
    GOTO LABEL_OS_LIST
)

:LABEL_OS_AUTO
SET OS_NAME=
FOR /f "tokens=2*" %%i IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') DO ( SET OS_NAME=%%j )
IF "%OS_NAME%" == "Windows 10 Home " (
    REM 10. Windows 10 / 11 Home
    SET KMS_KEY_ACTIVE=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    @ECHO 現在使用中のOSは: Windows 10 / 11 Home
) ELSE IF "%OS_NAME%" == "Windows 10 Pro " (
    REM 20. Windows 10 / 11 Professional
    SET KMS_KEY_ACTIVE=W269N-WFGWX-YVC9B-4J6C9-T83GX
    @ECHO 現在使用中のOSは: Windows 10 / 11 Pro
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise " (
    REM 30. Windows 10 / 11 Enterprise
    SET KMS_KEY_ACTIVE=NPPR9-FWDCX-D2C8J-H872K-2YT43
    @ECHO 現在使用中のOSは: Windows 10 / 11 Enterprise
) ELSE IF "%OS_NAME%" == "Windows 10 Pro for Workstations " (
    REM 40. Windows 10 / 11 Professional Workstation
    SET KMS_KEY_ACTIVE=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
    @ECHO 現在使用中のOSは: Windows 10 / 11 Pro for Workstations
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2019 " (
    REM 50. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
    @ECHO 現在使用中のOSは: Windows 10 Enterprise LTSC 2019
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2021 " (
    REM 50. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
    @ECHO 現在使用中のOSは: Windows 10 Enterprise LTSC 2021
) ELSE IF "%OS_NAME%" == "Windows 10 Enterprise LTSC 2024 " (
    REM 50. Windows 11 LTSC 2024 AND Windows 10 LTSC 2021 / 2019
    SET KMS_KEY_ACTIVE=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
    @ECHO 現在使用中のOSは: Windows 11 Enterprise LTSC 2024
) ELSE IF "%OS_NAME%" == "Windows 10 IoT Enterprise LTSC 2021 " (
    REM 60. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
    @ECHO 現在使用中のOSは: Windows 10 IoT Enterprise LTSC 2021
) ELSE IF "%OS_NAME%" == "Windows 10 IoT Enterprise LTSC 2024 " (
    REM 60. Windows 10 IoT Enterprise LTSC 2021 AND Windows 11 IoT Enterprise LTSC 2024
    SET KMS_KEY_ACTIVE=KBN8V-HFGQ4-MGXVD-347P6-PDQGT
    @ECHO 現在使用中のOSは: Windows 11 IoT Enterprise LTSC 2021
) ELSE IF "%OS_NAME%" == "Windows Server 2022 Standard " (
    REM 70. Windows Server 2022 Standard
    SET KMS_KEY_ACTIVE=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
    @ECHO 現在使用中のOSは: Windows Server 2022 Standard
) ELSE IF "%OS_NAME%" == "Windows Server 2022 Datacenter " (
    REM 71. Windows Server 2022 Datacenter
    SET KMS_KEY_ACTIVE=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
    @ECHO 現在使用中のOSは: Windows Server 2022 Datacenter
) ELSE IF "%OS_NAME%" == "Windows Server 2025 Standard " (
    REM 80. Windows Server 2025 Standard
    SET KMS_KEY_ACTIVE=TVRH6-WHNXV-R9WG3-9XRFY-MY832
    @ECHO 現在使用中のOSは: Windows Server 2025 Standard
) ELSE IF "%OS_NAME%" == "Windows Server 2025 Datacenter " (
    REM 81. Windows Server 2025 Datacenter
    SET KMS_KEY_ACTIVE=D764K-2NDRG-47T6Q-P8T8W-YP6DF
    @ECHO 現在使用中のOSは: Windows Server 2025 Datacenter
) ELSE (
    @ECHO ^( %OS_NAME% ^) は現在サポートされていません。再度選択してください…
    @ECHO 前のメニューに戻ります…
    @ECHO. 
    GOTO LABEL_OS_LIST
) 

:LABEL_OS_SELECT
IF "%KMS_HOST_INPUT%" == "" (
    GOTO LABEL_ACTIVE_CHECK_AUTO
) ELSE (
    GOTO LABEL_ACTIVE_CHECK_CUSTOM
)

:LABEL_ACTIVE_CHECK_CUSTOM
@ECHO.
@ECHO KMSサーバー %KMS_HOST_ACTIVE% のポート %KMS_PORT_ACTIVE% が開いているか確認中…
powershell -Command "if ((Test-NetConnection %KMS_HOST_ACTIVE% -Port %KMS_PORT_ACTIVE%).TcpTestSucceeded) {exit 0} else {exit 1}"
IF %ERRORLEVEL% == 0 (
    @ECHO 入力されたKMSサーバー %KMS_HOST_ACTIVE% はサービスを提供できます…
    @ECHO. 
    GOTO LABEL_ACTIVE_RUN
) ELSE (
    @ECHO 入力されたKMSサーバー %KMS_HOST_ACTIVE% は一時的に利用できません。再入力してください…
    @ECHO 前のメニューに戻ります…
    @ECHO. 
    GOTO LABEL_HOST_INPUT
)

:LABEL_ACTIVE_CHECK_AUTO
SET KMS_PORT_ACTIVE=1688
SETLOCAL ENABLEDELAYEDEXPANSION
SET KMS_HOST_TMP=
SET OPEN_FLG=FALSE
FOR %%A IN (%KMS_HOST_LIST%) do (
    SET KMS_HOST_TMP=%%A

    @ECHO.
    @ECHO KMSサーバー !KMS_HOST_TMP! のポート %KMS_PORT_ACTIVE% が開いているか確認中…
    powershell -Command "if ((Test-NetConnection !KMS_HOST_TMP! -Port %KMS_PORT_ACTIVE%).TcpTestSucceeded) {exit 0} else {exit 1}"

    IF !ERRORLEVEL! == 0 (
        @ECHO 選択されたKMSサーバー!KMS_HOST_TMP! はサービスを提供できます…
        @ECHO. 
        SET KMS_HOST_ACTIVE=!KMS_HOST_TMP!
        SET OPEN_FLG=TRUE
        GOTO LABEL_ACTIVE_RUN
    ) ELSE (
        @ECHO 選択されたKMSサーバー !KMS_HOST_TMP! は一時的に利用できません。
        @ECHO 次のデバイスをテスト中…
    )
)

IF NOT "%OPEN_FLG%" == "TRUE" (
    CLS
    @ECHO すべてのKMSサーバーは現時点で利用できません。再度テストを実行します…
    @ECHO. 
    GOTO LABEL_ACTIVE_CHECK_AUTO
)

:LABEL_ACTIVE_RUN
@ECHO 以下の情報を使用してアクティベーションを行います…
@ECHO KMSサーバーホスト: %KMS_HOST_ACTIVE%
@ECHO KMSサーバーポート: %KMS_PORT_ACTIVE%
@ECHO KMSアクティベーションキー: %KMS_KEY_ACTIVE%

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

PAUSE
