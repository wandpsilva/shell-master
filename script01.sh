#!/bin/bash

# PARAMETROS
# $0 - nome do programa
# $# - quantidade de parametros
# $* - todos os parametros inseridos
# $1-9 - cada parametro informado

clear
read -p "Digite o seu nome: " USER
RETURN_CODE=$?
clear
echo "============ START ================================="
echo ""
date
echo "processo:" $$
echo "ola $USER"
echo "return code da leitura da variavel: $RETURN_CODE"
echo ""
echo "===================================================="
echo ""
echo "o script $0 recebeu $# parametros"

if [ $# -eq 0 ]
then
	echo "voce nao informou numeros para a somar"
else
	echo "total da soma de parametros: $(expr $1 + $2)"
fi

upper () {
	echo $1 | tr a-z A-Z
}

echo ""
echo "Retorno da funcao upper:" $(upper wanderlucio)
echo ""
echo "============ END ==================================="

exit 0
