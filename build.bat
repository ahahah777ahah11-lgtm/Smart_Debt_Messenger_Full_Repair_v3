@echo off
setlocal
cd /d "%~dp0"
gradle --no-daemon clean assembleDebug assembleRelease
if errorlevel 1 exit /b %errorlevel%
echo Debug APK: app\build\outputs\apk\debug\app-debug.apk
echo Release APK: app\build\outputs\apk\release\app-release-unsigned.apk (unsigned)
