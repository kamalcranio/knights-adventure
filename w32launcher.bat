REM knights-adventure windows launcher

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
set versao = 0.0.5aWin32
if exist "%versao%.*" (goto:existe)
if not exist "%versao%.*" (goto:naoexiste)

:existe
echo Knights adventure ver. %versao% LAUNCHER
lua 0.0.5aWin32
pause
exit

:naoexiste
echo ARQUIVO DO JOGO (%versao%) NAO ENCONTRADO
pause
exit
