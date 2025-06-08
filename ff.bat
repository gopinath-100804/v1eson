@echo off
echo Starting Pixel Streaming Signalling Server with TURN and Cloudflare Tunnel...

:: Start Cloudflare Tunnel in a new CMD window
start "Cloudflare Tunnel" cmd /c "cloudflared tunnel --url http://localhost/ --no-tls-verify"

:: Start PowerShell script with Bypass Execution Policy in a new CMD window
start "Signalling Server" powershell -ExecutionPolicy Bypass -File "C:\Users\admins\Downloads\Windows\Testing_Plant\Samples\PixelStreamingInfrastructure-master (2)\PixelStreamingInfrastructure-master\SignallingWebServer\platform_scripts\cmd\Start_WithTURN_SignallingServer.ps1"

echo Both services started in parallel.

pause
