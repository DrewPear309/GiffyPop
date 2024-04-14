@echo off
setlocal enabledelayedexpansion

REM Prompting the user to enter the folder location
set /p folder="Enter the folder location: "

REM Checking if the entered folder exists
if not exist "%folder%" (
    echo Folder not found.
    exit /b
)

REM Changing the current directory to the entered folder
cd /d "%folder%"

REM Setting initial value for the file counter
set counter=1

REM Looping through all files in the directory
for %%f in (*) do (
    REM Padding the counter with leading zeros
    set "num=000!counter!"
    REM Extracting the last four digits from the padded counter
    set "num=!num:~-4!"

    REM Getting the file extension
    for /f "tokens=2 delims=." %%e in ("%%f") do (
        set "ext=%%e"
    )

    REM Renaming the file to the padded counter with original extension
    ren "%%f" "!num!.!ext!"

    REM Incrementing the counter
    set /a counter+=1
)

echo All files renamed successfully.

:end

