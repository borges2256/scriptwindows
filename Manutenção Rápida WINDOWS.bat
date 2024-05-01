@echo off
color 0a
:menu
cls
echo =======================
echo Menu de Ferramentas CMD
echo =======================
echo 1. Verificar integridade do sistema (sfc /scannow)
echo 2. Verificar e reparar erros de disco (chkdsk)
echo 3. Verificar e reparar corrupções de imagem do Windows (dism)
echo 4. Limpar o cache do DNS (ipconfig /flushdns)
echo 5. Sair
echo =======================
set /p choice="Escolha uma opcao: "

if "%choice%"=="1" goto sfc
if "%choice%"=="2" goto chkdsk
if "%choice%"=="3" goto dism
if "%choice%"=="4" goto flushdns
if "%choice%"=="5" goto end

:sfc
echo Executando sfc /scannow...
sfc /scannow
pause
goto menu

:chkdsk
echo Executando chkdsk...
chkdsk
pause
goto menu

:dism
echo Executando dism...
dism /Online /Cleanup-Image /RestoreHealth
pause
goto menu

:flushdns
echo Limpando o cache do DNS...
ipconfig /flushdns
pause
goto menu

:end
echo Encerrando o programa...
pause