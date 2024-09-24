@echo off
title ActivatePro 2.0
setlocal EnableDelayedExpansion

REM Setting Variables
set "version=ActivatePro version 2.0.0"
set "autoMode=0"
set logFile=%temp%/ActivatePro_log.txt
set "cliMode=1"



REM Start
:start
cls

REM LOGO
echo.
echo				    [38;5;12m___        __  _             __       ____                ___    ____ 
echo				   /   ^| _____/ /_(_)   ______ _/ /____  / __ \_________     ^|__ \  / __ \
echo				  / /^| ^|/ ___/ __/ / ^| / / __ `/ __/ _ \/ /_/ / ___/ __ \    __/ / / / / /
echo				 / ___ / /__/ /_/ /^| ^|/ / /_/ / /_/  __/ ____/ /  / /_/ /   / __/_/ /_/ / 
echo				/_/  ^|_\___/\__/_/ ^|___/\__,_/\__/\___/_/   /_/   \____/   /____(_)____/[0m
echo.
echo.

REM Version
timeout /t 1 > nul
echo %version%
echo Github: https://github.com/Bhupesh1307

REM Delay
timeout /t 1 >nul
echo.

REM Mode Selection
if %cliMode%==1 (
	goto command
) else (
	goto gui
)

:command                                                                         
title ActivatePro 2.0
set /p "cmd=ActivatePro> "	REM Taking Input as a Command from User

REM Expert Commands Working Function
if "%cmd%"=="" (
	echo.
	goto command
) else if "%cmd%"=="activatepro version" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="activatepro --version" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="activatepro -v" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="ap version" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="ap --version" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="ap -v" (
	echo %version%
	echo.
	goto command
) else if "%cmd%"=="gui" (
	set "cliMode=0"
	goto start
) else if "%cmd%"=="activatepro gui" (
	set "cliMode=0"
	goto start
) else if "%cmd%"=="ap --gui" (
	set "cliMode=0"
	goto start
) else if "%cmd%"=="activatepro help" (
	goto help
) else if "%cmd%"=="activatepro --help" (
	goto help
) else if "%cmd%"=="activatepro -h" (
	goto help
) else if "%cmd%"=="activatepro /?" (
	goto help
) else if "%cmd%"=="ap help" (
	goto help
) else if "%cmd%"=="ap --help" (
	goto help
) else if "%cmd%"=="ap -h" (
	goto help
) else if "%cmd%"=="ap /?" (
	goto help
) else if "%cmd%"=="help" (
	goto help
) else if "%cmd%"=="activatepro show log" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="activatepro --log" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="activatepro -l" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="ap show log" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="ap --log" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="ap -l" (
	start %temp%/ActivatePro_log.txt
	echo Showing ActivatePro_log.txt
	echo.
	goto command
) else if "%cmd%"=="activate windows home" (
	goto home
) else if "%cmd%"=="activate windows homeN" (
	goto home-n
) else if "%cmd%"=="activate windows pro" (
	goto pro
) else if "%cmd%"=="activate windows proN" (
	goto pro-n
) else if "%cmd%"=="activate windows enterprise" (
	goto enterprise
) else if "%cmd%"=="activate windows enterpriseN" (
	enterprise-n
) else if "%cmd%"=="activate windows education" (
	goto education
) else if "%cmd%"=="activate windows educationN" (
	goto education-n
) else if "%cmd%"=="activate office14" (
	goto office14
) else if "%cmd%"=="activate office15" (
	goto office15
) else if "%cmd%"=="activate office16" (
	goto office16
) else if "%cmd%"=="activate auto" (
	set "autoMode=1"
	goto auto
) else if "%cmd%"=="clear" (
	cls
	goto command
) else if "%cmd%"=="exit" (
	echo Exiting ActivatePro 2.0
	timeout /t 1 > nul
	exit
) else (
	echo ^"%cmd%^" is not a valid command. try ^"activatepro --help^" for help.
	echo.
	goto command
)

REM Activation Commands for Windows Editions
:home
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Home" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Home...
		echo Activating Windows Home Edition...
		echo Activating Windows Home Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
		echo Running: slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Home" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Home...
		echo Activating Windows Home Edition...
		echo Activating Windows Home Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
		echo Running: slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:home-n
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Home N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Home N...
		echo Activating Windows Home N Edition...
		echo Activating Windows Home N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
		echo Running: slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Home N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Home N...
		echo Activating Windows Home N Edition...
		echo Activating Windows Home N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
		echo Running: slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:pro
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Pro" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Pro...
		echo Activating Windows Pro Edition...
		echo Activating Windows Pro Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
		echo Running: slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Pro" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Pro...
		echo Activating Windows Pro Edition...
		echo Activating Windows Pro Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
		echo Running: slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)


:pro-n
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Pro N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Pro N...
		echo Activating Windows Pro N Edition...
		echo Activating Windows Pro N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
		echo Running: slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Pro N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Pro N...
		echo Activating Windows Pro N Edition...
		echo Activating Windows Pro N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
		echo Running: slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:enterprise
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Enterprise" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Enterprise...
		echo Activating Windows Enterprise Edition...
		echo Activating Windows Enterprise Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
		echo Running: slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Enterprise" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Enterprise...
		echo Activating Windows Enterprise Edition...
		echo Activating Windows Enterprise Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
		echo Running: slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:enterprise-n
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Enterprise N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Enterprise N...
		echo Activating Windows Enterprise N Edition...
		echo Activating Windows Enterprise N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
		echo Running: slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Enterprise N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Enterprise N...
		echo Activating Windows Enterprise N Edition...
		echo Activating Windows Enterprise N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
		echo Running: slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:education
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Education" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Education...
		echo Activating Windows Education Edition...
		echo Activating Windows Education Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
		echo Running: slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Education" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Education...
		echo Activating Windows Education Edition...
		echo Activating Windows Education Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
		echo Running: slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)

:education-n
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
if "%os%" == "Microsoft Windows 11 Education N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Education N...
		echo Activating Windows Education N Edition...
		echo Activating Windows Education N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
		echo Running: slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else if "%os%" == "Microsoft Windows 10 Education N" (
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		title Activating Windows Education N...
		echo Activating Windows Education N Edition...
		echo Activating Windows Education N Edition... >> %logFile%
		timeout /t 1 > nul
		echo Uninstalling product key...
		echo Uninstalling product key... >> %logFile%
		slmgr -upk
		echo Running: slmgr -upk >> %logFile%
		echo Installing new product key...
		echo Installing new product key... >> %logFile%
		slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
		echo Running: slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >> %logFile%
		echo Setting KMS machine name...
		echo Setting KMS machine name... >> %logFile%
		slmgr /skms kms8.msguides.com
		echo Running: slmgr /skms kms8.msguides.com >> %logFile%
		echo Attempting to activate Microsoft Windows...
		echo Attempting to activate Microsoft Windows... >> %logFile%
		slmgr /ato
		echo Running: slmgr /ato >> %logFile%
		echo.
		echo [38;5;10mActivated Microsoft Windows successfully.[0m.
		echo Activated Microsoft Windows successfully. >> %logFile%
		echo. >> %logFile%
		echo.
		echo Activation log file generated. Enter "activatepro show log" to see.
		echo.
		if %autoMode% == 1 (
			goto officeAuto
		) else (
			if %cliMode%==1 (
				goto command
			) else (
				cls
				echo [38;5;10mMicrosoft Windows Activated Successfully!
				echo Press any key to continue.[0m
				pause > nul
				timeout /t 2
				goto gui
			)
		)
	) else (
		goto internetError
	)
) else (
	echo [38;5;196mError: Incorrect Windows Edition.[0m
	if %cliMode% == 1 (
		echo.
		goto command
	) else (
		echo Press any key to continue!
		pause > nul
		goto guiWindows
	)
)



REM Activation Commands for Office Versions
:office14
echo Started on %date% at %time% >> %logFile%
echo. >> %logFile%
echo Checking if the computer is connected to the internet. >> %logFile%
echo Running: ping google.com -n 4 > nul >> %logFile%
ping google.com -n 4 > nul
if %errorlevel% == 0 (
	if exist "%programfiles(x86)%/Microsoft Office/Office14/ospp.vbs" (
		cd "%programfiles(x86)%/Microsoft Office/Office14"
		goto officeAct
	) else if exist "%programfiles%/Microsoft Office/Office14/ospp.vbs" (
		cd "%programfiles%/Microsoft Office/Office14"
		goto officeAct
	) else (
		echo [38;5;196mError: Microsoft Office not found!
		echo Couldn't find the path where Microsoft Office 2010 is installed.
		echo Make sure that Microsoft Office 2010 is installed at the default location.
		echo And then try again.[0m
		echo.
		goto command
) else (
	goto internetError
)

:office15
echo Started on %date% at %time% >> %logFile%
echo. >> %logFile%
echo Checking if the computer is connected to the internet. >> %logFile%
echo Running: ping google.com -n 4 > nul >> %logFile%
ping google.com -n 4 > nul
if %errorlevel% == 0 (
	if exist "%programfiles(x86)%/Microsoft Office/Office15/ospp.vbs" (
		cd "%programfiles(x86)%/Microsoft Office/Office15"
		goto officeAct
	) else if exist "%programfiles%/Microsoft Office/Office15/ospp.vbs" (
		cd "%programfiles%/Microsoft Office/Office15"
		goto officeAct
	) else (
		echo [38;5;196mError: Microsoft Office not found!
		echo Couldn't find the path where Microsoft Office 2013 is installed.
		echo Make sure that Microsoft Office 2013 is installed at the default location.
		echo And then try again.[0m
		echo.
		goto command
	)
) else (
	goto internetError
)

:office16
echo Started on %date% at %time% >> %logFile%
echo. >> %logFile%
echo Checking if the computer is connected to the internet. >> %logFile%
echo Running: ping google.com -n 4 > nul >> %logFile%
ping google.com -n 4 > nul
if %errorlevel% == 0 (
	if exist "%programfiles(x86)%/Microsoft Office/Office16/ospp.vbs" (
		cd "%programfiles(x86)%/Microsoft Office/Office16"
		goto officeAct
	) else if exist "%programfiles%/Microsoft Office/Office16/ospp.vbs" (
		cd "%programfiles%/Microsoft Office/Office16"
		goto officeAct
	) else (
		echo [38;5;196mError: Microsoft Office not found!
		echo Couldn't find the path where Microsoft Office 2016/2019/2021 is installed.
		echo Make sure that the Microsoft Office 2016 is installed at the default location.
		echo And then try again.[0m
		echo.
		goto command
	)
) else (
	goto internetError
)


REM Office Activation Function
:officeAct
title Activating MS Office...
echo.
echo Activating Microsoft Office >> %logFile%
cscript ospp.vbs /osppsvcauto
echo Running: cscript ospp.vbs /osppsvcauto >> %logFile%
cscript ospp.vbs /osppsvcauto >> %logFile%
cscript ospp.vbs /sethst:vista-kms1.ad.gatech.edu
echo Running: cscript ospp.vbs /sethst:vista-kms1.ad.gatech.edu >> %logFile%
cscript ospp.vbs /sethst:vista-kms1.ad.gatech.edu >> %logFile%
cscript ospp.vbs /act
echo Running: cscript ospp.vbs /act >> %logFile%
cscript ospp.vbs /act >> %logFile%
cscript ospp.vbs /dstatus
echo Running: cscript ospp.vbs /dstatus >> %logFile%
cscript ospp.vbs /dstatus >> %logFile
echo.
echo [38;5;10mActivated Microsoft Office successfully.[0m
echo Activated Microsoft Office successfully. >> %logFile%
echo. >> %logFile%
echo.
echo Activation log file generated. Enter "activatepro show log" to see.
echo.
goto command



:auto
echo Getting OS Info...
timeout /t 3 > nul
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
echo OS Detected: [38;5;15m%os%[0m
echo.

if "%os%" == "Microsoft Windows 11 Home" (
	goto home
) else if "%os%" == "Microsoft Windows 10 Home" (
	goto home
) else if "%os%" == "Microsoft Windows 11 Home N" (
	goto home-n
) else if "%os%" == "Microsoft Windows 10 Home N" (
	goto home-n
) else if "%os%" == "Microsoft Windows 11 Pro" (
	goto pro
) else if "%os%" == "Microsoft Windows 10 Pro" (
	goto pro
) else if "%os%" == "Microsoft Windows 11 Pro N" (
	goto pro-n
) else if "%os%" == "Microsoft Windows 10 Pro N" (
	goto pro-n
) else if "%os%" == "Microsoft Windows 11 Enterprise" (
	goto enterprise
) else if "%os%" == "Microsoft Windows 10 Enterprise" (
	goto enterprise
) else if "%os%" == "Microsoft Windows 11 Enterprise N" (
	goto enterprise-n
) else if "%os%" == "Microsoft Windows 10 Enterprise N" (
	goto enterprise-n
) else if "%os%" == "Microsoft Windows 11 Education" (
	goto education
) else if "%os%" == "Microsoft Windows 10 Education" (
	goto education
) else if "%os%" == "Microsoft Windows 11 Education N" (
	goto education-n
) else if "%os%" == "Microsoft Windows 10 Education N" (
	goto education-n
)

REM Help Command Fuction

:help

REM Syntax Help
echo.
echo [38;5;15mUsage:	^<command^> [option][0m
echo.

REM General Commands
echo ActivatePro General Commands:

REM Clear Command Help
echo		[38;5;15mclear						Clears the console[0m
echo.

REM Exit Command Help
echo		[38;5;15mexit						exits the program[0m
echo.

REM Version Command Help
echo ActivatePro Version Commands:
echo 	[38;5;15mactivatepro version				Shows the current version of ActivatePro[0m
echo.

REM Version Command Options
echo Command Options:
echo 	[38;5;15mactivatepro [version ^| --version ^| -v][0m
echo 	[38;5;15map 	    [version ^| --version ^| -v][0m
echo.

REM Log Command Help
echo ActivatePro Log Commands:
echo 	[38;5;15mactivatepro show log				Shows ActivatePro_log.txt[0m
echo.

REM Log Command Options
echo Command Options:
echo 	[38;5;15mactivatepro [show log ^| --log ^| -l][0m
echo 	[38;5;15map 	    [show log ^| --log ^| -l][0m
echo.

REM Windows Activate Command Help
echo Microsoft Windows Activation Commands:
echo 	[38;5;15mactivate windows home				Activates Microsoft Windows Home[0m
echo 	[38;5;15mactivate windows homeN				Activates Microsoft Windows Home N[0m
echo 	[38;5;15mactivate windows pro				Activates Microsoft Windows Pro[0m
echo 	[38;5;15mactivate windows proN				Activates Microsoft Windows Pro N[0m
echo 	[38;5;15mactivate windows enterprise			Activates Microsoft Windows Enterprise[0m
echo 	[38;5;15mactivate windows enterpriseN			Activates Microsoft Windows Enterprise N[0m
echo 	[38;5;15mactivate windows education			Activates Microsoft Windows Education[0m
echo 	[38;5;15mactivate windows educationN			Activates Microsoft Windows Education N[0m
echo.



REM Office Activate Command Help
echo Microsoft Office Activation Commands:
echo 	[38;5;15mactivate office14				Activates Microsoft Office 2010[0m
echo 	[38;5;15mactivate office15				Activates Microsoft Office 2013[0m
echo 	[38;5;15mactivate office16				Activates Microsoft Office 2016/2019/2021[0m
echo.



REM Auto Command Help
echo Auto Activation Command:
echo 	[38;5;15mactivate auto					Automatically detects installed Windows Edition and
echo								MS Office installation and activates them.[0m
echo.

REM Help Command Help
echo Take Help:
echo 	[38;5;15mhelp						Shows this Help Screen[0m
echo.
echo Command Options:
echo 	[38;5;15mactivatepro [help ^| --help ^| -h ^| /?][0m
echo		[38;5;15map	    [help ^| --help ^| -h ^| /?][0m
echo.

REM Goto Command
goto command



:officeAuto
set /p "choice=Do you want to activate Microsoft Office too?(y/n): "
if "%choice%" == "y" (
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul
	if %errorlevel% == 0 (
		goto officeAutoAct
	) else (
		goto internetError
	)
) else (
	set "autoMode=0"
	echo.
	goto command
)

:officeAutoAct
set "autoMode=0"
echo Getting Microsoft Office Info...
echo.
timeout /t 3 > nul

if exist "%programfiles(x86)%/Microsoft Office/Office14/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice14[0m
	cd "%programfiles(x86)%/Microsoft Office/Office14"
	goto officeAct
) else if exist "%programfiles%/Microsoft Office/Office14/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice14[0m
	cd "%programfiles%/Microsoft Office/Office14"
	goto officeAct
) else if exist "%programfiles(x86)%/Microsoft Office/Office15/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice15[0m
	cd "%programfiles(x86)%/Microsoft Office/Office15"
	goto officeAct
) else if exist "%programfiles%/Microsoft Office/Office15/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice15[0m
	cd "%programfiles%/Microsoft Office/Office15"
	goto officeAct
) else if exist "%programfiles(x86)%/Microsoft Office/Office16/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice16[0m
	cd "%programfiles(x86)%/Microsoft Office/Office16"
	goto officeAct
) else if exist "%programfiles%/Microsoft Office/Office16/ospp.vbs" (
	echo MS Office Detected: [38;5;15mOffice16[0m
	cd "%programfiles%/Microsoft Office/Office16"
	goto officeAct
) else (
	echo [38;5;196mError: Microsoft Office not found!
	echo Couldn't find any supported Microsoft Office Installation.[0m
	echo.
	set /p "ins=Do you want to install Microsoft Office for Free?(y/n): "
	if %choice% == "y" (
		goto officeInstall
	) else (
		set "autoMode=0"
		echo.
		goto command
	)	
)



:officeInstall
cls
echo office


REM Internet Connection Error Message
:internetError
timeout /t 3 > nul
if %cliMode%==1 (
	echo [38;5;196mError: Couldn't connect to the internet.
	echo Make sure you have an active internet connection and then try again.[0m
	echo.
	goto command
) else (
	cls
	echo [38;5;196mError: Couldn't connect to the internet.
	echo Make sure you have an active internet connection and then try again.[0m
	echo.
	echo Press any key to continue!
	pause > nul
	goto gui
)
echo Error: Couldn't connect to the internet. >> %logFile%
echo Make sure you have an active internet connection and then try again. >> %logFile%
echo. >> %logFile%



REM GUI Mode
:gui

REM Define Menu Items
set menu[0]=Activate Microsoft Windows
set menu[1]=Activate Microsoft Office
set menu[2]=Install Microsoft Office
set menu[3]=Autopilot
set menu[4]=Switch to CLI Mode
set menu[5]=Exit
set "selected=0"

:menu
cls

REM LOGO
echo.
echo				    [38;5;12m___        __  _             __       ____                ___    ____ 
echo				   /   ^| _____/ /_(_)   ______ _/ /____  / __ \_________     ^|__ \  / __ \
echo				  / /^| ^|/ ___/ __/ / ^| / / __ `/ __/ _ \/ /_/ / ___/ __ \    __/ / / / / /
echo				 / ___ / /__/ /_/ /^| ^|/ / /_/ / /_/  __/ ____/ /  / /_/ /   / __/_/ /_/ / 
echo				/_/  ^|_\___/\__/_/ ^|___/\__,_/\__/\___/_/   /_/   \____/   /____(_)____/[0m
echo.
echo.

REM Version
echo %version%
echo Github: https://github.com/Bhupesh1307

REM Display the Menu Items
echo.
echo.
echo Use W/S to navigate, press C to select:
echo.

REM Display the Menu Items
for /l %%i in (0,1,5) do (
	if %%i == %selected% (
		echo [1m[*]  !menu[%%i]![0m
	) else (
		echo [ ]  !menu[%%i]!
	)
)

REM Navigation Input
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

choice /c WSC >nul
if %errorlevel% == 1 (
	set /a selected=selected-1
	if !selected! lss 0 (
		set "selected=5"
	)
) else if %errorlevel% == 2 (
	set /a selected=selected+1
	if !selected! gtr 5 (
		set "selected=0"
	)
) else if %errorlevel% == 3 (
	if !selected! == 0 (
		goto guiWindows
	) else if !selected! == 1 (
		goto guiOffice
	) else if !selected! == 2 (
		goto guiOfficeInstall
	) else if !selected! == 3 (
		goto guiAuto
	) else if !selected! == 4 (
		set "cliMode=1"
		goto start
	) else if !selected! == 5 (
		echo Exiting ActivatePro 2.0
		timeout /t 1 > nul
		exit
	)
)
goto menu



:guiWindows
REM Windows Menu Variables
set menu[0]=Windows Home
set menu[1]=Windows Home N
set menu[2]=Windows Pro
set menu[3]=Windows Pro N
set menu[4]=Windows Enterprise
set menu[5]=Windows Enterprise N
set menu[6]=Windows Education
set menu[7]=Windows Education N
set menu[8]=Go Back
set menu[9]=Exit
set "selected=0"



:windowsMenu
REM Windows GUI Menu
chcp 65001 > nul
cls
echo.
echo				    	██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗
echo				    	██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝
echo				    	██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗
echo				    	██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║
echo				    	╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║
echo				     	╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝
echo.
echo.


REM Windows Menu Items
:WinMenuItms
echo Use W/S to navigate, press C to select:
echo.

REM Display the Menu Items
for /l %%i in (0,1,9) do (
	if %%i == %selected% (
		echo [1m[*]  !menu[%%i]![0m
	) else (
		echo [ ]  !menu[%%i]!
	)
)

REM Navigation Input
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

choice /c WSC >nul
if %errorlevel% == 1 (
	set /a selected=selected-1
	if !selected! lss 0 (
		set "selected=9"
	)
) else if %errorlevel% == 2 (
	set /a selected=selected+1
	if !selected! gtr 9 (
		set "selected=0"
	)
) else if %errorlevel% == 3 (
	if !selected! == 0 (
		cls
		goto home
	) else if !selected! == 1 (
		cls
		goto homeN
	) else if !selected! == 2 (
		cls
		goto pro
	) else if !selected! == 3 (
		cls
		goto proN
	) else if !selected! == 4 (
		cls
		goto enterprise
	) else if !selected! == 5 (
		cls
		goto enterpriseN
	) else if !selected! == 6 (
		cls
		goto education
	) else if !selected! == 7 (
		cls
		goto educationN
	) else if !selected! == 8 (
		cls
		goto gui
	) else if !selected! == 9 (
		echo Exiting ActivatePro 2.0
		timeout /t 1 > nul
		exit
	)
)
goto windowsMenu                               