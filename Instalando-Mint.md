# Instalando Mint

  - [Crie um um USB bootável](usb.md)
  - Faça boot do USB (normalmente apertando F12 durante a inicialização)
  - **Atenção**, se aparecer `Failed to load COM32...boot: `, aperte TAB, digite
   `live-install` e dê enter.
  - Instale em inglês
  - Verifique que a internet está funcionando e marque a opção `Download updates
   while installing`
  - Selecione a opção `erase disk and install ubuntu`
  - Selecione `Fuso horário de São Paulo`
  - Selecione o idioma do teclado como `Português(Brasil)` e testar se as teclas
   `ç`,`ã`,`é` estão devidamente associadas
  - Preencha
    - Name: `LAMIND`
    - Computer Name: `lamind-1-1` (lamind-fileira-posição) a partir do mais
    próximo do quadro e mais próximo da porta
    - User: `lamind-admin`
    - Password: determinada previamente
    - Marcar `require my password to log in`
  - Reinicie o computador e faça o login
  - Agora você vai fazer a atualização inicial com os passos abaixo
  e deve demorar alguns minutos.
  Enquanto a atualização vai sendo feita, continue com os passos que não
  envolvem o terminal.
  - Abra o terminal (`gnome-terminal`) e digite
````bash
sudo apt-get update
sudo apt-get upgrade
````
  - Vá em `Users and Groups`
  - Digite o password                                                                          
  - Crie um novo usuário (standard) clicando em `add`
    - Full name: `Aluno`
    - Username: `lamind`


  - Vá em `Login Window`
  - Digite o password
  - Clique em `Auto login`
    - Marque `Enable Automatic Login`
    - Selecione `lamind` em `User:`


## Após a instalação

Depois que a instalação e a atualização estiverem concluídas, alguns
softwares devem ser instalados. Foi desenvolvido o script `Instalador-Lamind.sh`
com a função de instalar a maior parte dos softwares, pacotes e bibliotecas
necessárias. Tal script pode ser baixado pelo
[site do Lamind](http://ufpr-lamind.github.io/files/Instalador-Lamind.sh) e será
necessário alterar a permissão de uso dele através do comando
````bash
  chmod a+x *dir*/Instalador-Lamind.sh
````
onde `*dir*` é o diretório onde foi baixado o script. Para executá-lo utilize
````bash
./*dir*/Instalador-Lamind.sh
````

O script irá baixar e mover o script `Launcher_Lamind.sh` para o usuário comum.
Para mais informações acesse [o post no site](http://ufpr-lamind.github.io/instalacao/2016/11/28/Launcher_Lamind-e-Files_Lamind.html)
Ao executá-lo, será baixo diversos arquivos dentre eles o `Julia-Packagjs.jl`.
Com os softwares instalados, é hora de instalar os pacotes no Julia, o que deve
ser feita em todas as versões do julia instaladas.**OBS** Após a instalação dos softwares,
devem ser instalados os pacotes do Julia dentro do próprio terminal do Julia, com
auxílio do arquivo 'Julia-Packages.jl', conforme os comandos abaixo
````bash
julia
include("Julia-Packages.jl")
````
