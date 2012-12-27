#!/bin/bash

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
