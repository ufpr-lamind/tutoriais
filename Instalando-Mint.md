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
    - Computer Name: `lamind-1-1` (lamind-fileira-posiçao) a partir do mais
    próximo do quadro e mais próximo da porta
    - User: `lamind-admin`
    - Password: determinada previamente
    - Marcar `require my password to log in`
  - Reinicie o computador e faça o login
  - Agora você vai fazer a atualização inicial com os passos abaixo
  e deve demorar alguns minutos.
  Enquanto a atualização vai sendo feito, continue com os passos que não
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
softwares devem ser instalados:

  - Baixe o
[install-programas.sh](https://ufpr-lamind.github.io/files/install-programas.sh)
 e o [julia_up.jl](https://ufpr-lamind.github.io/files/julia_up.jl)
  - Mova-os para o `Desktop`
  - Abra o terminal e digite
  ````bash
  sudo chmod a+x Desktop/install-programas.sh
  ./Desktop/install-programas.sh
  ````
