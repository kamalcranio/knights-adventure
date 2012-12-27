@echo off
set titulo=KNIGHTS ADVENTURE 0.0.3a - INSTALADOR VER 0.5a - By Kamalcranio
title %titulo%

:inicio
  cls
	echo %titulo%
	echo -------------------------------------------------------------------
	echo Esse instalador vai instalar a versao 0.0.3a do Knights Adventure
	echo no seu computador. Tenha certeza de que voce possui o LuaForWindows
	echo em sua versao estavel mais recente instalado no seu computador.
	echo -------------------------------------------------------------------
	set /p continuar=APERTE "C" PARA CONTINUAR, OU "S" PARA SAIR 
	if "%continuar%" equ "c" (goto:continuar)
	if "%continuar%" equ "s" (goto:sair)
	goto:inicio

:continuar
	if exist knightswin32.* (goto:possivel)

:possivel
	cls
	echo %titulo%
	title %titulo% - 50%
	echo Compilando arquivos...
	luac -o 0.0.3aWin32 knightswin32
	luac -o 0.0.3a knights
	goto:pronto

:pronto
	cls
	echo INSTALACAO CONCLUIDA
	set /p iniciar=Deseja iniciar o jogo? (S/n): 
	if "%iniciar%" equ "" (w32launcher.bat)
	if "%iniciar%" equ "s" (w32launcher.bat)
	if "%iniciar%" equ "n" (exit)
