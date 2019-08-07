@echo off

set PORT=80
echo Starting server: http:\\localhost:%PORT%
php -S 0.0.0.0:%PORT% -t "%~dp0..\."