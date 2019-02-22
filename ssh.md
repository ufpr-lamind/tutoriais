# SSH
O SSH é um programa para logar em uma máquina remota e para executar comando em
uma máquina remota.
O SSH conecta e logo em um específico hostname (opcionalmente com um `user`).

## Conectando
Para se conectar remotamente a uma máquina basta digitar
````bash
ssh "ip"
````
onde `"ip"` é o ip fixo da máquina. Por padrão, será logado no usuário
administrador caso não seja especificado algum outro. Para especificar o usuário
que será logado acrescentamos `"nome_usuario"@` antes do `ip`. Por exemplo `ssh
lamind@200.17.252.191` loga no usuário `lamind` da máquina com ip
`200.17.252.191`. Lembrando que será necessário saber a senha do usuário para
conectar-se a ele.

## Executando comandos
Podemos executar comandos remotamente. Para isso podemos logar e executar
diretamente pelo terminal como se estivessemos localmente.

Outra forma é executar juntamente como SSH executando `ssh "ip" "comando"`,
onde "comando" pode ser apenas um comando ou varios se estiverem entre `''`.
Exemplo
````bash
ssh 200.17.252.191 ifconfig
````
para mostrar o estado das interfaces de rede da máquina remota.

````bash
ssh 200.17.252.191 'sudo apt-get update'
````
para atualizar o utilitário de manuseamente de pacotes do APT da máquina remota.

Uma observação dessa forma é que ao realizar o comando automaticamente
desloga-se da máquina remota.

## Executando comandos em varias máquinas
Com o SSH podemos executar os mesmos comandos em várias máquinas de forma
automatica através do laço `for`. Utilizaremos como exemplo como atualizar o
utilitário de manuseamento de pacotes do APT para uma lista com duas máquinas.
Seja a lista com as máquinas 200.17.252.191 e 200.17.252.192
````bash
lista=(200.17.252.191 200.17.252.192)
for ip_da_lista in ${lista[@]}
do
  ssh -t $ip_da_lista 'sudo apt-get update'
done
````
# Removendo um host key
Ao acessar uma das máquinas remotamente pode-se deparar com o problema:
`@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!`
Para resolve-lo será necessário remover a key antiga
`ssh-keygen -f "/home/lamind-admin/.ssh/known_hosts" -R ENDEREÇO_IP`.

## Lista de Ips
A lista completa dos Ips do Lamind pode ser encontrada em
[aqui](https://ufpr-lamind.github.io/files/lista-ips.zip)

## Comandos úteis para serem executados
  - sudo shutdown -P "tempo" "mensagem" - Exibe a "`mensagem`" e desliga a
  máquina ápos `tempo` minutos.
  - wget "link" - Descarrega o arquivo contido no `link`
  - scp "arquivo" "Destino" - Tranfere o `arquivo` contido localemente para
outra máquina (por exemplo
  lamind-admin@200.17.252.191:/home/lamind-admin/Downloads)
