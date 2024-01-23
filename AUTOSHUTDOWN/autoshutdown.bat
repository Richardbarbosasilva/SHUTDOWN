@echo off

if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

::create some variables to tell the batch file where to find the powershell script.

set "caminhodownloads=%USERPROFILE%\Downloads\autoshutdown.ps1"
set "caminhoareadetrabalho=%USERPROFILE%\Desktop\autoshutdown.ps1"
set "caminhodocumentos=%USERPROFILE%\Documents\autoshutdown.ps1"
set "caminhopastafortes=C:\Fortes\AC\autoshutdown.ps1"
set "caminhopastaatual=%~dp0autoshutdown.ps1"

:: Verify if the file does exists

if exist "%caminhodownloads%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0autoshutdown.ps1" -Verb RunAs
) else if exist "%caminhoareadetrabalho%" (
    echo Arquivo encontrado. Iniciando PowerShell.
     :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
  powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0autoshutdown.ps1" -Verb RunAs
) else if exist "%caminhodocumentos%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0autoshutdown.ps1" -Verb RunAs
) else if exist "%caminhopastafortes%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
   powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0autoshutdown.ps1" -Verb RunAs
) else if exist "%caminhopastaatual%" (    
   echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0autoshutdown.ps1" -Verb RunAs
) else (
    goto :Filenotfound
)

:Filenotfound

echo Script PowerShell autoshutdown.ps1 not found, verify it's path and try once again.

:: exit or pause

pause
 
