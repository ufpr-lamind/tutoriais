#!/bin/bash
#Version 1.1 out/03/16
#Script criado com o objetivo de agilizar os pacotes necessários para
#determinada tarefa na data em questão. Alterando apenas o arquivo
#"Files_Lamind.tar" é possivel baixar os arquivos. O launcher deve estar
#presente em cada máquina no diretorio home/lamind , onde este será o diretorio
#padrão dos arquivos de "Files_Lamind.tar". Para a primeria execução é
#necessario executar o comando "chmod a+x  Laucher_Lamind.sh"


#Remove pasta anterior
rm -rf Files_Lamind
#Baixa o novo o arquivo
wget https://ufpr-lamind.github.io/files/Files_Lamind.tar
#Extrai os arquivos de files
tar -xvf Files_Lamind.tar
#Remove arquivo files.7z
rm Files_Lamind.tar


#Cria Arquivo com a data atual
#data=`date +%d-%m-%y`
#cat >>Files_Lamind/$data
