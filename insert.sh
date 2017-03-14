#!/bin/bash
#
# insert.sh - Programa feito para adicionar chaves automaticamente em servidores que as remove ao 
# reiniciar - Ex: BRASCLOUD
#
# Autor: Anderson Freitas <tmsi.freitas@gmail.com>
# Site: http://www.dialplanreload.com/
# Repositorio: https://github.com/DialplanReload/InsertKeys
#
# Desenvolvido sob licensa GPL. 
# Fique a vontade para contribuir com a evolucao deste programa.
#
#-----------------------------------------------------------------------------------------------
#
#
# Execucao simples - ./insert.sh e execucao com -h
#
# Configuration
file=/var/www/authorized_keys
dir_keys=/root/.ssh/
#
# Variables
path_cp=$(which cp)
#
#
# Opcao de help -h | --help

     if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then

          echo -en "\n                                        *** \n"
          echo -en "\n Programa feito para adicionar chaves automaticamente em servidores que as remove ao reiniciar\n"
          echo -en "\n Exemplo: BRASCLOUD\n"
          echo -en "\n                                        *** \n"

     exit 0

     fi


$path_cp $file $dir_keys

echo -en "----------\\\\\\\\\\ Copiando chaves SSH para permitir acesso."

exit 0
