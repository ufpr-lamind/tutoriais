# Instalando Ubuntu

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
    - Name: LAMIND
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
  - Vá em User accounts
  - Aperte unlock e digite o password
  - Crie um novo usuário (standard) clicando no `+`
    - Full name: Aluno
    - Username: `lamind`
  - Clique em password e em action `login in without a password` e clique em
  change

## Após a instalação

Depois que a instalação e a atualização estiverem concluídas, alguns
softwares devem ser instalados. O seguinte comando instala a maioria pelo
terminal:
````bash
sudo apt-get install geany gfortran git octave texlive-latex-extra unrar vim
````
Os programas a seguir devem ser instalados seguindo informações específicas
  - [Atom](https://atom.io)
````bash
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
````
  - [Julia](https://julialang.org)

    Primeiro você deve ter instalado o programa **GIT** e ter baixar o
`julia-mngr` usando os comandos abaixo
````bash
mkdir ~/packages
cd ~/packages
git clone https://github.com/abelsiqueira/julia-mngr
cd julia-mngr
sudo make
julia-mngr install
````
Agora você deve selecionar as opções adequadas, que são: 64, no, no e
julia-release, correspondentes aos números 2, 2, 2 e 1, respectivamente.
Teste rodando
````
julia
````
Se o programa abrir, deve ter funcionado. Feche com Ctrl+D.

  - R

  ````
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository "deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/"
sudo apt-get update
sudo apt-get install r-base
  ````
  - [RStudio](https://download1.rstudio.org)

    - Baixe a versão mais recente no site
    - Coloque-o na pasta raiz
    - Execute os comandos abaixo
  ````
  sudo apt-get install libjpeg62
  sudo dpkg -i *.deb
  rm *.deb
  ````

  **Obs:** Talvez seja necessário a instalação de um pacote:
   ````
   $ sudo apt-get install libx11-dev
  ````
