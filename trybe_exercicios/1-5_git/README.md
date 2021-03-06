<h1 align="center">
    <img alt="Launchbase" src="https://i.ibb.co/d4W2x4g/trybe.png" width="400px" />
</h1>

<h3 align="center">
  Exercício 2-1: Trybe - Git & GitHub - O que é e para que serve - Concluído o/ o/ o/ :star:
</h3>

<blockquote align="center">“Quanto mais você estuda, mais aprende e se aproxima de realizar seu sonhos!”</blockquote>

<h1></h1>

<!-- <div>
  <img src="https://i.ibb.co/S59Z6Hg/Desafio2-2.gif" alt="demo-web" height="425">
</div> -->

<p align="center">

  <a href="https://www.linkedin.com/in/eduardosouzaprogrammer/">
    <img alt="Made by Eduardo Souza" src="https://img.shields.io/badge/made%20by-Edu%20Souza-%23F8952D">
  </a>

  <a href="LICENSE" >
    <img alt="License" src="https://img.shields.io/badge/license-MIT-%23F8952D">
  </a>

</p>

<p align="center">
  <a href="#rocket-sobre-o-exercicio">Sobre o Exercício</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#calendar-entrega">Entrega</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#memo-licença">Licença</a>
</p>

## :rocket: Sobre o Exercício

Você deve colocar os scripts em Shell que desenvolveu nos últimos dias nessa pasta. Coloque cada exercício em um arquivo separado.

-   Inicialize o repositório com git init;

-   Crie um arquivo de README utilizando o comando touch README.md;

-   Crie um commit

## Questões shell script [Meus códigos]

1. Escreva um _Shell Script_ que imprima na tela a frase: `"Shell Script é demais!"`;

#### Resposta:

              #!/bin/bash
              echo "Shell Script é demais"

2. Modifique o _Shell Script_ do exercício anterior para incluir uma variável. A variável deverá receber o conteúdo da mensagem: `"Shell Script com variáveis é demais!"`;

#### Resposta:

              #!/bin/bash
              FRASE= "Shell Script é demais"
              echo $FRASE

3. Escreva um _Shell Script_ que guarde o resultado do comando `hostname` em uma variável. Imprima na tela uma mensagem: `"Este script está rodando no computador: _"` em que `"_"` é o resultado do comando `hostname` que está na variável;

#### Resposta:

              #!/bin/bash
              HOSTNAME=`hostname`
              echo "Este script está rodando no computador: $HOSTNAME"

4. Escreva um _Shell Script_ que verifique se o caminho até um arquivo existe _("file path"_). Se ele existir, imprima na tela a mensagem: `"O caminho _ está habilitado!"`. Então, verifique se você tem permissão de escrita no arquivo. Se tiver, mostre a mensagem: `"Você tem permissão para editar _"`. Caso contrário, mostre a mensagem: `"Você NÃO foi autorizado a editar _"`.     **_O `_` nas mensagens deve ser substituído pelo ("file path").\_**

#### Resposta:

              #!/bin/bash

              FILE="/home/dadokari/trybe_codes/1-5/teste.sh"

              if [ -e $FILE ] # "-e" serve pra saber se o arquivo ou diretório existe
              then
                  echo "O caminho $FILE está habilitado"
                  if [ -w $FILE ] # "-w" serve para saber se temos permissões de editar o arquivo
                  then
                          echo "Você têm permissão para editar"
                  else
                          echo "Você NÃO têm permissão para editar"
                  fi
              else
                  echo "O caminho $FILE NÃO existe"
              fi

5. Escreva um _Shell Script_ que peça ao usuário um caminho de arquivo ou diretório e, em seguida, imprima na tela se ele é um arquivo comum, um diretório, ou outro tipo de arquivo. Depois, faça um comando de listagem no arquivo/diretório usando a opção de listagem detalhada.

#### Resposta:

              #!/bin/bash

              read -p "É diretório ou arquivo? digite: " FILE

              if [ -f "$FILE" ]
              then
                  echo "$FILE é um arquivo comum"
                  echo "Lendo o arquivo"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está a lista do arquivo"
                  echo ""
                  ls -halF $FILE


              elif [ -d "$FILE" ]
              then
                  echo "$FILE é um diretório"
                  echo "Lendo o diretório"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está a lista do diretório"
                  echo ""
                  ls -halF $FILE

              else
                  echo "$FILE Hummm...isto é alguma outra coisa"
                  echo "Lendo o (...)"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está a resolução"
                  echo ""
                  ls -halF $FILE

              fi

6.  Modifique o _Shell Script_ do exercício anterior de forma que ele aceite o nome do arquivo ou diretório como argumento (ou parâmetro), em vez de perguntar ao usuário. Pesquise nos recursos adicionais como utilizar os parâmetros (ou argumentos) no _Shell Script_.

#### Resposta:

              #!/bin/bash

              if [ -f "$1" ]
              then
                  echo "$1 é um arquivo comum"
                  echo "Lendo o arquivo"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está a lista do arquivo"
                  echo ""
                  ls -halF $1


              elif [ -d "$1" ]
              then
                  echo "$1 é um diretório"
                  echo "Lendo o diretório"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está a lista do diretório"
                  echo ""
                  ls -halF $1

              else
                  echo "$1 Hummm...isto é alguma outra coisa"
                  echo "Lendo o diretório atual"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  echo "Aqui está do diretório"
                  echo ""
                  ls -halF $1

              fi

7. Escreva um _Shell Script_ que receba um diretório como argumento (ou parâmetro). Se o argumento não for um diretório, mostre a mensagem: `"O argumento _ não é um diretório!"`. Se o argumento for um diretório, conte quantos arquivos existem nele e mostre a seguinte mensagem: `"O _ tem _ arquivos."`, em que você deve substituir os `"_"` pelo diretório e a quantidade de arquivos nele, respectivamente.

#### Resposta:

              #!/bin/bash

              if [ -d "$1 ]
              then
                  FILE =`ls -halF $1 | wc -l`
                  echo "O diretório $1 têm $FILE arquivos"
              else
                  echo "O argumento $1 não é um diretório, tente novamente"
              fi

# Bônus exercícios

1. Escreva um _Shell Script_ que imprima as palavras `"shell"`, `"script"`, `"usando"`, `"estrutura"`, `"repetição"`, `"for"`, `"terminal"` na tela, uma palavra por linha. Tente fazer isso usando o menor número de comandos possível.

#### Resposta:

              #!/bin/bash

              WORDS="shell script usando estrutura repetição for terminal"

              for i in $WORDS
              do
                  echo $i

              done

2. Modifique o _Shell Script_ do exercício 6 para aceitar uma quantidade ilimitada de arquivos ou diretórios como argumento (ou parâmetro).

#### Resposta:

              #!/bin/bash

              PARAMS=$@

              for i in $PARAMS
              do
                  if [ -f "$i" ]
                  then
                      echo "$i é um arquivo comum"
                      echo "Lendo o arquivo"
                      sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                      echo "Aqui está a lista do arquivo"
                      echo ""
                      ls -halF $i
                      echo "" ; echo ""



                  elif [ -d "$i" ]
                  then
                      echo "$i é um diretório"
                      echo "Lendo o diretório"
                      sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                      echo "Aqui está a lista do diretório"
                      echo ""
                      ls -halF $i
                      echo "" ; echo ""

                  else
                      echo "$i Hummm...isto é alguma outra coisa"
                      echo "Lendo o diretório atual"
                      sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                      echo "Aqui está do diretório"
                      echo ""
                      ls -halF $i
                      echo "" ; echo ""

                  fi

              done

3. Escreva um _Shell Script_ que renomeie todos os arquivos do diretório atual que terminam em `".png"`, de forma que o nome do arquivo comece com a data atual no formato `"YYYY-MM-DD"`. Por exemplo, se tiver um arquivo com o nome `"kitten.png"` no diretório atual, e a data de hoje for 16/04/2020, o script deverá mudar o nome do arquivo para `"2020-04-16-kitten.png"`.

#### Resposta:

              #!/bin/bash

              DATE=`date +%F`

              for i in `ls *.png`
              do

                  FILE="$DATE-$i"
                  mv $i $FILE

              done

4. Modifique o _Shell Script_ do exercício anterior para receber o diretório onde estão os arquivos e a extensão dos arquivos que devem ser modificados como argumento (ou parâmetro). Adicione também um mensagem mostrando como eram o como vão ficar os nomes dos arquivos a serem modificados.

#### Resposta:

              #!/bin/bash

              PLACE=$1
              EXTENSION=$2

              DATE=$(date +%F)



              if [ -d $PLACE ]
              then

                  echo "Por favor digite o prefixo, ou se preferir NÃO usar-lo aperte enter"
                  read PREFIX
                  echo ""
                  cd $PLACE
                  echo "Diretório alvo foi: $PLACE"
                  echo ""
                  echo "Listando arquivos do diretório"
                  sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1
                  ls $PLACE

                  if [ -z $PREFIX ]
                  then

                echo ""
                      echo "Sua escolha foi optar por não inserir prefixo"
                      echo "processando os arquivos"
                      sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1

                      for i in `ls *$EXTENSION`
                      do
                          mv $i ${DATE}-${i}
                          echo "O aquivo: $i foi renomeado para: ${DATE}-${i}"
                          echo ""
                      done
                      echo "Concluído com sucesso"
                      exit

                  else
                echo ""
                      echo "Você optou por um prefixo de nome: $PREFIX"
                      echo "processando os arquivos"
                      sleep 1; echo "."; sleep 1; echo ".."; sleep 1; echo "..."; sleep 1

                      for i in `ls *$EXTENSION`
                      do
                          mv $i ${PREFIX}_${DATE}-${i}
                          echo "O aquivo: $i foi renomeado para: ${PREFIX}_${DATE}-${i}"
                          echo ""
                      done
                      echo "Concluído com sucesso"
                      exit
                  fi

              else

                      echo "O diretório informado : $PLACE NÃO EXISTE"
                      echo "Processo cancelado"
                      exit
              fi

## Licença

Este projeto está licenciado sob a Licença MIT - consulte [LICENSE](https://opensource.org/licenses/MIT) para maiores detalhes.
