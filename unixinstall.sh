#!/bin/bash

ver="0.0.3a"
file="knights"
luaver="5.2"

inicio() {
  clear
	echo "-------------------------------------------------------"
	echo "-----KNIGHTS ADVENTURE 0.0.3a--------------------------"
	echo "-------------------------------------------------------"
	echo "Este programa vai compilar e configurar"
	echo "o Knights adventure para o seu sistema"
	echo "-------------------------------------------------------" ; read key
	case $key in
		*) passo2 ;;
esac
}

passo2() {
	clear
	echo "-------------------------------------------------------"
	echo "É necessário possuir as seguintes dependências/ programas:"
	echo "	+ lua (Em sua versão mais recente)"
	echo "Se você já possui essas dependências, digite s, caso"
	echo "contrário, digite n, e as dependências serão instaladas"
	echo "É NECESSÁRIO ESTAR EM ESTADO DE ROOT PARA INSTALAR AS"
	echo "DEPENDÊNCIAS!"; read depend
	case $depend in
		s) compileAll;;
		n) installDepends;;
		*) passo2 ;;
esac
}

compileAll() {
	echo "O programa está compilando e configurando..."
	luac -o $ver $file
	clear
	echo "O programa compilou e configurou o Knights Adventure " $ver
	read pause
	exit
}

installDepends() {
	echo "Instalando dependências..."
	apt-get install -y lua$luaver
	echo "Dependências instaladas... Iniciando compilação"
	compileAll
}

inicio
