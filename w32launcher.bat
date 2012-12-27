@echo off
set versao = 0.0.3aWin32
if exist "%versao%.*" (goto:existe)
if not exist "%versao%.*" (goto:naoexiste)

:existe
echo Knights adventure ver. %versao% LAUNCHER
lua 0.0.3aWin32
pause
exit

:naoexiste
echo ARQUIVO DO JOGO (%versao%) NAO ENCONTRADO
pause
exit
