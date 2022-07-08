#!/bin/bash
#By: Lagone4

echo -e "digite o endereço do dominio: \n"
read dominio

ip=$(dig +short ${dominio} @8.8.8.8)

if [ -z "${ip}" ]; then
                echo -e "O endereço informado: ${dominio}  não existe ou esta incorreto! \n "
else

        echo -e "o ip desse site é: \n  ${ip} \n"
fi
