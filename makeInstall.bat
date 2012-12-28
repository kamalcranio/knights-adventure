REM knights-adventure windows easy-way compiler

REM A permissão é garantida, livre de custo, para qualquer pessoa que obtenha uma cópia deste software
REM e os documentos associados ao mesmo (o "Software"), com o poder de usar, modificar, retirar partes do código
REM para futuros softwares, publicar, distribuir, sublicenciar, e/ou vender cópias do Software, e permitir à
REM indivíduos por quem o software está sendo fornecido para tal.

REM Os termos acima e os comunicados a seguir deverão se encontrar em qualquer cópia ou parte substancial do Software.

REM O SOFTWARE É FORNECIDO SEM GARANTIA DE QUALQUER FORMA, EXPLÍCITA OU IMPLÍCITA, LIMITADO APENAS ÀS GARANTIAS
REM DE MERCADO, RE-FORMAÇÃO PARA ALGUM PROPÓSITO EM PARTICULAR E NÃO INFRIGIMENTO. EM NENHUM MOMENTO OS AUTORES
REM OU DONOS DOS DIREITOS DO SOFTWARE DEVEM SER PUNIDOS POR QUALQUER CULPA, DANOS OU OUTRAS RAZÕES DECORRENTES
REM DO SOFTWARE DESCRITO.

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
	luac -o 0.0.5aWin32 knightswin32
	luac -o 0.0.5a knights
	goto:pronto

:pronto
	cls
	echo INSTALACAO CONCLUIDA
	set /p iniciar=Deseja iniciar o jogo? (S/n): 
	if "%iniciar%" equ "" (w32launcher.bat)
	if "%iniciar%" equ "s" (w32launcher.bat)
	if "%iniciar%" equ "n" (exit)
