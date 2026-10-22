@echo off
echo Export PNG Image to C64 PRG

if "%~1"=="" (
    echo Drag and drop an image file onto this batch script.
    pause
    exit /b 1
)

"C:\Python\Scripts\oiiotool.exe" "%~1" --resize:filter=mitchell 320x200 -o "%TEMP%\%~n1.png"
"C:\Python\Scripts\image2c64.exe" -vv --format koala -e fix --executable --output "%~dpn1.prg" "%TEMP%\%~n1.png"

pause
