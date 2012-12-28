#!/bin/bash
# knights-adventure Linux easy-way compiler
# A permissão é garantida, livre de custo, para qualquer pessoa que obtenha uma cópia deste software e os
# documentos associados ao mesmo (o "Software"), com o poder de usar, modificar, retirar partes do
# código para futuros softwares, publicar, distribuir, sublicenciar, e/ou vender cópias do Software, e
# permitir à indivíduos por quem o software está sendo fornecido para tal.

# Os termos acima e os comunicados a seguir deverão se encontrar em qualquer cópia ou parte substancial do Software.

# O SOFTWARE É FORNECIDO SEM GARANTIA DE QUALQUER FORMA, EXPLÍCITA OU IMPLÍCITA, LIMITADO APENAS ÀS GARANTIAS
# DE MERCADO, RE-FORMAÇÃO PARA ALGUM PROPÓSITO EM PARTICULAR E NÃO INFRIGIMENTO. EM NENHUM MOMENTO OS AUTORES
# OU DONOS DOS DIREITOS DO SOFTWARE DEVEM SER PUNIDOS POR QUALQUER CULPA, DANOS OU OUTRAS RAZÕES DECORRENTES
# DO SOFTWARE DESCRITO.
ver="0.0.5a"
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
