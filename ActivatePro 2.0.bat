@echo off
title ActivatePro 2.0
setlocal EnableDelayedExpansion

REM Setting Variables
set "version=ActivatePro version 2.0.0"
set "autoMode=0"
set logFile=%temp%/ActivatePro_log.txt
set "cliMode=1"
set "office14=0"
set "office15=0"
set "office16=0"



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

REM Details
echo [38;5;208m%version%[0m
echo [38;5;208mGithub: https://github.com/Bhupesh1307[0m
timeout /t 1 > nul
echo.
echo.
echo [38;5;14mUsage: activatepro ^| ap [options][0m
echo.
echo   [38;5;14m-h		Shows help for this program[0m
echo   [38;5;14m--help	Shows help for this program[0m
echo   [38;5;14m--gui		Starts the GUI environment of this program[0m
echo.
echo.

REM Delay
timeout /t 1 >nul
echo.

:command                                                                         
title ActivatePro 2.0
set "autoMode=0"		REM Resetting Automode
set /p "cmd=[1mActivatePro>[0m "	REM Taking Input as a Command from User

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
	goto gui
) else if "%cmd%"=="activatepro gui" (
	set "cliMode=0"
	goto gui
) else if "%cmd%"=="activatepro --gui" (
	set "cliMode=0"
	goto gui
) else if "%cmd%"=="ap gui" (
	set "cliMode=0"
	goto gui
) else if "%cmd%"=="ap --gui" (
	set "cliMode=0"
	goto gui
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
) else if "%cmd%"=="activate windows" (
	echo Getting OS Info...
    timeout /t 3 > nul
    for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set os=%%i
    echo !os! | findstr /c:"Microsoft Windows 11 Home" > nul
    if !errorlevel! == 0 (
        goto home11
    )
	echo !os! | findstr /c:"Microsoft Windows 11 Home N" > nul
	if !errorlevel! == 0 (
		goto homeN11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Pro" > nul
	if !errorlevel! == 0 (
		goto pro11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Pro N" > nul
	if !errorlevel! == 0 (
		goto proN11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Enterprise" > nul
	if !errorlevel! == 0 (
		goto enterprise11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Enterprise N" > nul
	if !errorlevel! == 0 (
		goto enterpriseN11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Education" > nul
	if !errorlevel! == 0 (
		goto education11
	)
	echo !os! | findstr /c:"Microsoft Windows 11 Education N" > nul
	if !errorlevel! == 0 (
		goto educationN11
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Home" > nul
	if !errorlevel! == 0 (
		goto home10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Home N" > nul
	if !errorlevel! == 0 (
		goto homeN10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Pro" > nul
	if !errorlevel! == 0 (
		goto pro10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Pro N" > nul
	if !errorlevel! == 0 (
		goto proN10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Enterprise" > nul
	if !errorlevel! == 0 (
		goto enterprise10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Enterprise N" > nul
	if !errorlevel! == 0 (
		goto enterpriseN10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Education" > nul
	if !errorlevel! == 0 (
		goto education10
	)
	echo !os! | findstr /c:"Microsoft Windows 10 Education N" > nul
	if !errorlevel! == 0 (
		goto educationN10
	)
	else (
		echo [38;5;196mError: OS not supported.[0m
		echo.
		goto command
	)
) else if "%cmd%"=="activate office" (
    set "officeCount=0"
    if exist "%programfiles(x86)%/Microsoft Office/Office14/ospp.vbs" (
        set "office14=1"
        set /a officeCount+=1
    ) else if exist "%programfiles%/Microsoft Office/Office14/ospp.vbs" (
		set "office14=1"
		set /a officeCount+=1
	)
    if exist "%programfiles(x86)%/Microsoft Office/Office15/ospp.vbs" (
        set "office15=1"
        set /a officeCount+=1
    ) else if exist "%programfiles%/Microsoft Office/Office15/ospp.vbs" (
		set "office15=1"
		set /a officeCount+=1
	)
    if exist "%programfiles(x86)%/Microsoft Office/Office16/ospp.vbs" (
        set "office16=1"
        set /a officeCount+=1
    ) else if exist "%programfiles%/Microsoft Office/Office16/ospp.vbs" (
		set "office16=1"
		set /a officeCount+=1
	)
    if %officeCount% == 1 (
        if %office14% == 1 (
            goto office14
        ) else if %office15% == 1 (
            goto office15
        ) else if %office16% == 1 (
            goto office16
        )
    ) else if %officeCount% gtr 1 (
        echo Multiple versions of Microsoft Office detected.
        echo Please select which version to activate:
        if %office14% == 0 (
            echo [1m[1][0m Microsoft Office 2010 				[38;5;196m(Not found)[0m
        ) else if %office14% == 1 (
			echo [1m[1][0m Microsoft Office 2010				[38;5;10m(Found)[0m
		)
        if %office15% == 0 (
            echo [1m[2][0m Microsoft Office 2013 				[38;5;196m(Not found)[0m
        ) else if %office15% == 1 (
			echo [1m[2][0m Microsoft Office 2013				[38;5;10m(Found)[0m
		)
        if %office16% == 0 (
            echo [1m[3][0m Microsoft Office 2016/2019/2021 	[38;5;196m(Not found)[0m
        ) else if %office16% == 1 (
			echo [1m[3][0m Microsoft Office 2016/2019/2021	[38;5;10m(Found)[0m
		)
        set /p "choice=Enter the number of the version to activate: "
        if %choice% == 1 (
            goto office14
        ) else if %choice% == 2 (
            goto office15
        ) else if %choice% == 3 (
            goto office16
        ) else (
            echo Invalid choice. Returning to command prompt.
			echo.
            goto command
        )
    ) else (
        echo No supported Microsoft Office installation found.
		echo.
        goto command
    )
) else if "%cmd%"=="activate office15" (
	goto office15
) else if "%cmd%"=="activate office16" (
	goto office16
) else if "%cmd%"=="activate auto" (
	set "autoMode=1"
	goto auto
) else if "%cmd%"=="install office" (
	goto officeInstall
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
:home11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Home Edition detected.
	echo Windows 11 Home Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Home...
		echo Activating Windows 11 Home Edition...
		echo Activating Windows 11 Home Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:homeN11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Home N Edition detected.
	echo Windows 11 Home N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Home N...
		echo Activating Windows 11 Home N Edition...
		echo Activating Windows 11 Home N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:pro11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Pro Edition detected.
	echo Windows 11 Pro Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Pro...
		echo Activating Windows 11 Pro Edition...
		echo Activating Windows 11 Pro Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:proN11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Pro N Edition detected.
	echo Windows 11 Pro N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Pro N...
		echo Activating Windows 11 Pro N Edition...
		echo Activating Windows 11 Pro N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:enterprise11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Enterprise Edition detected.
	echo Windows 11 Enterprise Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Enterprise...
		echo Activating Windows 11 Enterprise Edition...
		echo Activating Windows 11 Enterprise Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:enterpriseN11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Enterprise N Edition detected.
	echo Windows 11 Enterprise N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Enterprise N...
		echo Activating Windows 11 Enterprise N Edition...
		echo Activating Windows 11 Enterprise N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:education11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Education Edition detected.
	echo Windows 11 Education Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Education...
		echo Activating Windows 11 Education Edition...
		echo Activating Windows 11 Education Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:educationN11
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 11 Education N Edition detected.
	echo Windows 11 Education N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 11 Education N...
		echo Activating Windows 11 Education N Edition...
		echo Activating Windows 11 Education N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:home10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Home Edition detected.
	echo Windows 10 Home Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Home...
		echo Activating Windows 10 Home Edition...
		echo Activating Windows 10 Home Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:homeN10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Home N Edition detected.
	echo Windows 10 Home N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Home N...
		echo Activating Windows 10 Home N Edition...
		echo Activating Windows 10 Home N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:pro10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Pro Edition detected.
	echo Windows 10 Pro Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Pro...
		echo Activating Windows 10 Pro Edition...
		echo Activating Windows 10 Pro Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:proN10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Pro N Edition detected.
	echo Windows 10 Pro N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Pro N...
		echo Activating Windows 10 Pro N Edition...
		echo Activating Windows 10 Pro N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:enterprise10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Enterprise Edition detected.
	echo Windows 10 Enterprise Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Enterprise...
		echo Activating Windows 10 Enterprise Edition...
		echo Activating Windows 10 Enterprise Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:enterpriseN10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Enterprise N Edition detected.
	echo Windows 10 Enterprise N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Enterprise N...
		echo Activating Windows 10 Enterprise N Edition...
		echo Activating Windows 10 Enterprise N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:education10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Education Edition detected.
	echo Windows 10 Education Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Education...
		echo Activating Windows 10 Education Edition...
		echo Activating Windows 10 Education Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
	)

:educationN10
	echo Started on %date% at %time% >> %logFile%
	echo. >> %logFile%
	echo Windows 10 Education N Edition detected.
	echo Windows 10 Education N Edition detected.	>> %logFile%
	echo Checking if the computer is connected to the internet. >> %logFile%
	echo Running: ping google.com -n 4 > nul >> %logFile%
	ping google.com -n 4 > nul >> %logFile%
	if %errorlevel% == 0 (
		title Activating Windows 10 Education N...
		echo Activating Windows 10 Education N Edition...
		echo Activating Windows 10 Education N Edition... >> %logFile%
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
		echo Windows Activation process done with code 0.
		echo Windows Activation process done with code 0. >> %logFile%
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
				echo [38;5;10mMicrosoft Windows Activated Successfully.[0m
				echo.
				echo Press any key to continue.
				pause > nul
				goto gui
			)
		)
	) else (
		goto internetError
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
		if %cliMode%==1 (
				goto command
			) else (
				echo Press any key to continue.
				pause > nul
				goto gui
			)
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
		if %cliMode%==1 (
				goto command
			) else (
				echo Press any key to continue.
				pause > nul
				goto gui
			)
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
		echo Make sure that the Microsoft Office 2016/2019/2021 is installed at the default location.
		echo And then try again.[0m
		echo.
		if %cliMode%==1 (
				goto command
			) else (
				echo Press any key to continue.
				pause > nul
				goto gui
			)

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
echo [38;5;10mMicrosoft Office Activation process done with code 0^[0m
echo Microsoft Office Activation process done with code 0 >> %logFile%
echo. >> %logFile%
echo.
echo Activation log file generated. Enter "activatepro show log" to see.
echo.
if %cliMode%==1 (
	goto command
) else (
	cls
	echo [38;5;10mMicrosoft Office Activation process done with code 0^[0m
	echo.
	echo Press any key to continue.
	pause > nul
	goto gui
)



:auto
echo Detecting installed Windows edition...
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



:officeAuto
set /p "choice=Do you want to activate Microsoft Office?(y/[1mn[0m): "
if %choice% == y (
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
	if %cliMode% == 1 (
		goto command
	) else (
		goto gui
	)
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
	set /p "ins=Do you want to install Microsoft Office 2021 Pro Plus?(y/[1mn[0m): "
	if %choice% == "y" (
		goto officeInstall
	) else (
		set "autoMode=0"
		echo.
		if %cliMode% == 1 (
			goto command
		) else (
			cls
			goto gui
		)
	)	
)



:officeInstall
echo.
timeout /t 2 > nul
echo This Microsoft Office 2021 Pro Plus package contains
echo Word, Excel Powerpoint, Outlook and OneNote.
echo To add or remove any app to this package edit the configuration.xml located in sources.
echo Press any key to begin the installation...
pause > nul
echo.
timeout /t 2 > nul
echo. >> %logFile%
echo Checking if the computer is connected to the internet. >> %logFile%
echo Running: ping google.com -n 4 > nul >> %logFile%
ping google.com -n 4 > nul
if %errorlevel% == 0 (
	title Installing MS Office...
	cd sources
	echo Downloading files for the installation...
	echo Downloading files for the installation... >> %logFile%
	setup /download configuration.xml
	echo Running: setup /download configuration.xml >> %logFile%
	echo Starting the installation...
	echo Starting the installation... >> %logFile%
	setup /configure configuration.xml
	echo Running: setup /configure configuration.xml >> %logFile%
	echo.
	cd ..
	goto command
) else (
	goto internetError
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
echo		[38;5;15mexit						Exits the program[0m
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

REM GUI Command Help
echo ActivatePro GUI Commands:
echo 	[38;5;15mgui						Starts the GUI environment of this program[0m
echo.

echo Command Options:
echo 	[38;5;15mactivatepro [gui ^| --gui][0m
echo 	[38;5;15map 	    [gui ^| --gui][0m
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



REM GUI Mode
:gui

REM Define Menu Items
set menu[0]=Activate Microsoft Windows
set menu[1]=Activate Microsoft Office
set menu[2]=Autopilot
set menu[3]=Switch to CLI Mode
set menu[4]=Exit
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

REM Details
echo [38;5;208m%version%[0m
echo [38;5;208mGithub: https://github.com/Bhupesh1307[0m

REM Display the Menu Items
echo.
echo.
echo [38;5;14mUse W/S to navigate, press C to select:[0m
echo.

REM Display the Menu Items
for /l %%i in (0,1,4) do (
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
echo.

choice /c WSC >nul
if %errorlevel% == 1 (
	set /a selected=selected-1
	if !selected! lss 0 (
		set "selected=4"
	)
) else if %errorlevel% == 2 (
	set /a selected=selected+1
	if !selected! gtr 4 (
		set "selected=0"
	)
) else if %errorlevel% == 3 (
	if !selected! == 0 (
		goto guiWindows
	) else if !selected! == 1 (
		goto guiOffice
	) else if !selected! == 2 (
		goto guiAuto
	) else if !selected! == 3 (
		set "cliMode=1"
		goto start
	) else if !selected! == 4 (
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
cls
echo.
echo 				    	 [38;5;12m_       ___           __                  
echo 				    	^| ^|     / (_)___  ____/ /___ _      _______
echo 				    	^| ^| /^| / / / __ \/ __  / __ \ ^| /^| / / ___/
echo 				    	^| ^|/ ^|/ / / / / / /_/ / /_/ / ^|/ ^|/ (__  ) 
echo 				    	^|__/^|__/_/_/ /_/\__,_/\____/^|__/^|__/____/[0m                                             
echo.
echo.


REM Windows Menu Items
:WinMenuItms
echo [38;5;14mUse W/S to navigate, press C to select:[0m
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



REM MS Office Activation GUI

:guiOffice
REM MS Office GUI Variables
set menu[0]=MS Office 2010
set menu[1]=MS Office 2013
set menu[2]=MS Office 2016
set menu[3]=MS Office 2019
set menu[4]=MS Office 2021
set menu[5]=Go Back
set menu[6]=Exit
set "selected=0"


:officeMenu
REM Office GUI Menu
chcp 65001 > nul
cls
echo.
echo 				    	    [38;5;12m__  ________    ____  _________         
echo 				    	   /  ^|/  / ___/   / __ \/ __/ __(_)_______ 
echo 				    	  / /^|_/ /\__ \   / / / / /_/ /_/ / ___/ _ \
echo 				    	 / /  / /___/ /  / /_/ / __/ __/ / /__/  __/
echo 				    	/_/  /_//____/   \____/_/ /_/ /_/\___/\___/[0m 
echo.
echo.
echo.

REM MS Office Menu Items
:OffMenuItms
echo [38;5;14mUse W/S to navigate, press C to select:[0m
echo.

REM Display the Menu Items
for /l %%i in (0,1,6) do (
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
echo.
echo.

choice /c WSC >nul
if %errorlevel% == 1 (
	set /a selected=selected-1
	if !selected! lss 0 (
		set "selected=6"
	)
) else if %errorlevel% == 2 (
	set /a selected=selected+1
	if !selected! gtr 6 (
		set "selected=0"
	)
) else if %errorlevel% == 3 (
	if !selected! == 0 (
		cls
		goto office14
	) else if !selected! == 1 (
		cls
		goto office15
	) else if !selected! == 2 (
		cls
		goto office16
	) else if !selected! == 3 (
		cls
		goto office16
	) else if !selected! == 4 (
		cls
		goto office16
	) else if !selected! == 5 (
		cls
		goto gui
	) else if !selected! == 6 (
		echo Exiting ActivatePro 2.0
		timeout /t 1 > nul
		exit
	)
)
goto officeMenu                              



REM Autopilot Function
:guiAuto
chcp 65001 > nul
cls
echo.
echo				    	 [38;5;13m█████╗ ██╗   ██╗████████╗ ██████╗ ██████╗ ██╗██╗      ██████╗ ████████╗
echo				    	██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔══██╗██║██║     ██╔═══██╗╚══██╔══╝
echo				    	███████║██║   ██║   ██║   ██║   ██║██████╔╝██║██║     ██║   ██║   ██║   
echo				    	██╔══██║██║   ██║   ██║   ██║   ██║██╔═══╝ ██║██║     ██║   ██║   ██║   
echo				    	██║  ██║╚██████╔╝   ██║   ╚██████╔╝██║     ██║███████╗╚██████╔╝   ██║   
echo				    	╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝    ╚═╝[0m                                                                     
echo.
echo.
set "autoMode=1"
goto auto



:officeInstall
pause



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