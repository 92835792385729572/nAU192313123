@echo off
echo Installing npm packages...

:: List of packages to install
set "packages=axios moment figlet ora chalk chalk-animation keypress"

:: Install the npm packages
npm install %packages%

if %errorlevel% equ 0 (
    echo All npm packages installed successfully.
) else (
    echo Failed to install some npm packages. Please check the error messages above.
)

pause