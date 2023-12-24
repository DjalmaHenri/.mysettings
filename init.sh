#!/bin/bash

clear

echo -e "Olá, Sou Friday! Seu assistente de instalção.\n"

sleep 4s

echo -e "Me diga, você quer instalar um novo sistema no seu computador pessoal ou servidor?\n"

sleep 2s

echo -e  "Aperte 1 - Computador Pessoal"
sleep 0.5s
echo "Aperte 2 - Servidor"

read alternative    


if [[ $alternative == 1 ]]; then

  cd /home/djalma/.mysettings/.personal

  clear

  echo "Podemos iniciar?"

  read question

    if [[ $question == Sim || sim ]]; then
      bash start.sh
    fi

elif [[ $alternative == 2 ]]; then
  
 cd /home/djalma/.mysettings/.server

  clear

  echo -e "Você quer iniciar uma nova instação ou fazer backup do servidor?\n"

  echo -e "1 - Nova Instalação"
  echo -e "2 - Backup\n"

  read question

    if [[ $question == 1 ]]; then
      bash start.sh
    
    elif [[ $question == 2 ]]; then
      bash backup.sh 

    else 
      echo "Opção inválida"

    fi


    else
  echo "Opção errada, tente novamente."

fi


