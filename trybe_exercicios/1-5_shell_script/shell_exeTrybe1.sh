#!/bin/bash
FILE="/home/dadokari/trybe_codes/1-5/teste.sh"
if [ -e $FILE ] 
then
    echo "O caminho $FILE está habilitado"

    if [ -w $FILE ]
    then
            echo "Você têm permissão para editar"
    else
            echo "Você NÃO têm permissão para editar"
    fi
else
    echo "O caminho $FILE NÃO existe"
fi
