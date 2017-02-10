# Otimizando a instalação em varias maquinas.
Por ser um processo encomodo executar a mesma sequencia de comandos em diversas
máquinas do laborátorio pode-se optar pela utilização de um script que executa
os comandos de forma automatica.

## Launcher_Lamind
Optou-se por utilizar um script (Launcher_Lamind.sh) que irá baixar os arquivos
necessarios para os procedimentos a serem executados. Alterando apenas os
arquivos contidos no arquivo comprimido "Files_Lamind.tar" e
atribuindo ele ao link http://ufpr-lamind.github.io/Files_Lamind.tar, ao se
executar o script, ele irá
  - Remover a pasta anterior "Files_Lamind"
  - Baixar o novo arquivo compactado
  - Extrair os arquivos de do arquivo compactado
  - Remover o arquivo compactado


  O script por padrão está no diretorio `/home/lamind`, portanto encontra-se no
  usuário comum e não no administrador.

## Download em todos.sh
Script com a função de acessar todos os computadores remotamente através de uma
lista de ips, baixar algum arquivo especifico e alterar a permissão dele.
### Código
````bash
#!/bin/bash
# envia o arquvio para todos os pcs listados e muda as permissoes do arquivo.

# Variável com a lista de máquinas
##Pcs 1-2~4
#hosts=(130 167 250 )
##Pcs 1~5-2~7 exceto 5-7 (ip 241 pro causa do roteador)
hosts=(40 75	78	79	120	128	130	151	152	159	160	165	166	167	168	179	181	188	189	190	191	192	193	247	248	249	250	251	252)

for host in ${hosts[@]} #para cada pc na lista
do
    echo 'Download realizado na máquina '200.17.252.$host'...'
    ssh -t 200.17.252.$host 'wget https://andrebuhler.github.io/Lancher_Lamind.sh && chmod a+x Lancher_Lamind.sh'
    echo 'Download concluido'
    echo -e '\n\n'
done

````

## Julia-Packages.jl
Arquivo no formato julia onde é instalado os pacotes utilizados no Julia. Mais
informações
- [post sobre Julia-Packages](http://ufpr-lamind.github.io/instalacao/2016/11/28/Julia-Packages.html)
- [na página do Github](https://github.com/ufpr-lamind/tutoriais/blob/master/Julia-Packages.md)

## Instalador-Lamind.sh
Instala os programas usados frequentemente no laboratório. Mais informações
- [post sobre Instalador-Lamind](http://ufpr-lamind.github.io/instalacao/2016/11/28/Instalador-Lamind.html)
- [na página do Github](https://github.com/ufpr-lamind/tutoriais/blob/master/Instalador-Lamind.md)
