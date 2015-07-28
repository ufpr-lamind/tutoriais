# Instalando Ubuntu

  - Faça boot do USB (normalmente apertando F12 durante a inicialização)
  - **Atenção**, se aparecer `Failed to load COM32...boot: `, aperte TAB, digite `live-install` e dê enter.
  - Instale em inglês
  - Verifique que a internet está funcionando e marque a opção `Download updates while installing`
  - Selecione a opção `erase disk and install ubuntu`
  - Selecione `Fuso horário de São Paulo`
  - Selecione o idioma do teclado como `Português(Brasil)` e testar se as teclas `ç`,`ã`,`é` estão devidamente associadas
  - Preencha
    - Name: LAMIND
    - Computer Name: `lamind-1-1` (lamind-fileira-posiçao) a partir do mais próximo do quadro e mais próximo da porta
    - User: `lamind-admin`
    - Password: determinada previamente
    - Marcar `require my password to log in`
  - Reinicie o computador e faça o login
  - Vá em User accounts
  - Aperte unlock e digite o password
  - Crie um novo usuário (standard) clicando no `+`
    - Full name: Aluno
    - Username: `lamind`
  - Clique em password e em action `login in without a password` e clique em change
  - Abra o Launcher (ou aperte o botão com símbolo do Windows), digite "Software & updates" e clique no ícone que apareceu
  - Na aba `Ubuntu Software` clique em `Download from` e selecione `Other...`.
  - Navegue pela lista, escolhendo `Brazil` e depois `ubuntu.c3sl.ufpr.br`.
  - Clique em `Choose Server` e depois em `Close`
  - Clique em `Reload` e espera atualizar
  - Clique em software updater, atualize (install now) e reinicie quando pedir

## Após a instalação

Depois que a instalação estiver concluída, alguns softwares devem ser instalados:
O seguinte comando instala a maioria pelo terminal:
````bash
sudo apt-get install geany gfortran git octave texlive-latex-extra vim
````
Os programas a seguir devem ser instalados seguinte informações específicas
  - [Atom](https://atom.io)
````bash
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
````
