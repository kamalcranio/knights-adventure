#!/bin/bash
# knights-adventure Linux launcher
# A permissão é garantida, livre de custo, para qualquer pessoa que obtenha uma cópia deste software e os documentos
# associados ao mesmo (o "Software"), com o poder de usar, modificar, retirar partes do código para
#futuros softwares, publicar, distribuir, sublicenciar, e/ou vender cópias do Software, e permitir à indivíduos
# saber por quem o software está sendo fornecido para tal.

# Os termos acima e os comunicados a seguir deverão se encontrar em qualquer cópia ou parte substancial do Software.

# O SOFTWARE É FORNECIDO SEM GARANTIA DE QUALQUER FORMA, EXPLÍCITA OU IMPLÍCITA, LIMITADO APENAS ÀS GARANTIAS DE
# MERCADO, RE-FORMAÇÃO PARA ALGUM PROPÓSITO EM PARTICULAR E NÃO INFRIGIMENTO. EM NENHUM MOMENTO OS AUTORES OU
# DONOS DOS DIREITOS DO SOFTWARE DEVEM SER PUNIDOS POR QUALQUER CULPA, DANOS OU OUTRAS RAZÕES DECORRENTES DO
# SOFTWARE DESCRITO.

ver=0.0.3a
inicio() {
echo "---------------------------------------------------------------------"
echo "Knights adventure 0.0.3a LAUNCHER 0.1"
echo "É necessário ter o pacote 'lua' mais recente instalado no computador"
echo "---------------------------------------------------------------------" ; read key
case $key in
  *) executar ;;
esac
}

executar() {
lua $ver
}

inicio
