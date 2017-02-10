
#Comandos executados pelo terminal.
# Introdução
O objetivo deste documento é instruir sobre os comandos utilizados frequentemente.
Para abrir o terminal acesse `Menu` e digite na caixa de texto `terminal` ou pressione simultaneamente `Ctrl+Alt+T`.
Comandos possuiem opções (o quais não se limitam aos mensionados a seguir). Para visualizar as opções utilize `"comando" --help`. Exemplo `cd --help`. Algumas opções comuns (podendo variar de comando para comando)
  - -f: força a aceitação de um comando.
  - -q: modo siliencioso, poucas informações serão mostradas.
  - -h,--help: exibe as informações de ajuda  do comando.
  - -y: confirma automaticamente decisões

# Comandos
## CD
Acessa diretórios.
Exemplo: `cd /home/Desktop` acessa o diretório do usuário

## Variaveis
Uma variável é chamada por `$variavel`. Exemplo `$PWD`. É possivel definir novas variaveis, exemplo `nova_var=5`.
### Lista (parcial) de variáveis pré-definidas
  - PWD: Possui o valor do diretório atual
  - HOME: Possui o valor do diretorio do usuario

## RM
Apaga um arquivo ou diretorio. Sem utilizar a opção `-r` só apagara diretorios
vazios; com a opção `-r` apagará todos os arquivos e diretorios dentro do
diretorio especificado ser. Exemplo `rm Pasta_vazia`.

## APT-GET
Gerenciador de pacotes do linux. **Obs:** Necessita de permissoes.
### UPDATE
Atualiza a lista de pacotes e programas que podem ser instalados. Exemplo `apt-get update`
### UPGRADE
Atualiza os pacotes e programas instalados. Exemplo `apt-get upgrade`
### INSTALL
Instala um novo pacote ou programa. Exemplo `apt-get install programa`

## SUDO
Comando necessario antes de outros comandos quando é preciso permissões de administrador.
**Obs:** Será pedido a senha do usuario administrador.

## WGET
Utilizado apra baixar arquivos diretamente pelo terminal
Exemplo:´wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.5/julia-0.5.0-linux-x86_64.tar.gz´

## TAR
Cria ou extrai um arquivo compactado.
Opções do comando:
  - c-: cria um novo arquivo tar. Exemplo `-cvf arquivo_comprimido.tar pasta_que_vai_ser_comprimida/`
  - x-: extrai um arquivo tar. Exemplo `tar -vxf arquivo_comprimido.tar`.
    Para extrair fora do diretorio atual utilize a opção `C` seguido do diretorio. Exemplo `tar -vxf arquivo_comprimido.tar -C /home/outro_diretorio/`
  - v-: torna a execução do comando mais “verbosa”, ou seja, ele vai `contando`
  o que está fazendo.
  - f-: indica que o resultado será do tipo arquivo.
  - z-: necessario para arquivos gzip.

## MV
Move um arquivo ou diretorio e tambem utilizado para renomear arquivos e diretorios. Exemplo `mv "origem" "destino"`

## SCP e SSH
Utilidos para acessar dados remotamente.
### SCP
Trasfere arquivos. Exemplo `scp  /home/lamind-admin/arquivo_na_origem lamind-admin@$ip:/home/lamind-admin/destino`
irá transferir o arquivo `arquivo_na_origem` do computador local para a maquina
`$ip `na pasta do usuário `lamind-admin/destino` utilizando as permissoes do
usuário lamind-admin.
### SSH
Acessa uma maquina remotamente de forma que o terminal local se torna o terminal
remoto.Exemplo `ssh $ip`. Utilizando a opção `-t` é possivel executar comandos ao
mesmo tempo em que se acessa a maquina remota. Exemplo `ssh -t $ip  'ls'`, onde
`$ip` é o é o endereço da maquina e `'ls'` o comando a ser executado enter aspas
simples (' ').
**OBS:** É necessario se atentar quanto as permissões.

## LN
Cria links de atalho. Exemplo `ln -s  "programa_ou_arquivo" destino`. Se destino
for um diretorio então será criado um atalho com o mesmo nome do programa ou
arquivo original, ou seja, o exemplo resultará um arquivo `programa_ou_arquivo` que leva
até o original. Caso `destino` fosse `destino/nome_atalho` resultaria em um
arquivo `nome_atalho`.**OBS:** A opção `-s` é necessaria para a criação de um atalho
normal, a ausencia do mesmo ocorre na criação de um hardlink o que foge ao intuito
deste guia. Outras opções:
 - f-: remove arquivos de destino existentes



## LS
Lista informações sobre os arquivos no diretorio atual ou especificado. Exemplo
`ls` listará todos os arquivos do diretorio atual exceto ocultos. Opçoes:
  - -a: exibe tambem arquivos ocultos.
  - -l: lista os arquivos e diretorios indicando as permissoes de cada um, onde:
    - o primeiro caracter indica se é um diretorio (`d`) ou se é um arquivo (`-`)
    - do segundo ao quarto representam as permissoes do usuario, quinto ao setimo
do grupo e do oitavo ao decimo de todos. Os atributos podem ser:
      - r: leitura
      - w: escrita
      - x: execução

## CHMOD
Altera permissoes de arquivos ou diretorios. Exemplo `chmod a+x arquivo` adiciona
(`+`) a permissao de execução (`x`) para todos (`a`).
