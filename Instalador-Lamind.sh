#!/bin/sh
#Version 1.5 março/26/18
#------
#Instalaçao feita no usuário administrador


# Instalaçao de Chaves
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 #chaves para o R e RStudio

# Inclusão de repositorios
sudo add-apt-repository ppa:webupd8team/atom -y #rep para o Atom
sudo add-apt-repository "deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/" -y #rep para o R e RStudio
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental -y #rep para o Ruby

# Atualização
sudo apt-get update
sudo apt-get upgrade -y
echo "\n\n Update Completo \n\n"

# Download de Arquivos
sudo wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb # RStudio
sudo wget https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.2-linux-x86_64.tar.gz
sudo wget https://raw.githubusercontent.com/ufpr-lamind/tutoriais/master/Julia-Packages.jl #Julia packages
echo  "\n\n Donwload Completo \n\n"

# Instalação de bibliotecas
sudo apt-get install libjpeg62
echo  "\n\n Biblioteca Completa \n\n"

# Instalação principal
sudo apt-get install atom build-essential cmake curl fpc ink ipython3-notebook g++ gcc maxima \
geany gems geogebra gfortran git make nodejs octave python3-matplotlib \
python3-pip  python3-yaml python-dev python-pip python-setuptools \
r-base ruby-dev ruby2.2 ruby2.3 ssh subversion texlive-latex-extra texlive-full unrar vim -y
echo  "\n\n Instalação Principal Completa \n\n"

# Instalações secundarias
## Atom plugins
sudo apm install julia-client language-julia language-matlab-octave \
latex-completions
sudo gem install jekyll
echo  "\n\n Instalação Secundaria Completa \n\n"


## julia
# ao alterar a versao baixada sera necessário alterar a parte após julia-
tar -vzxf julia-0.6.2-linux-x86_64.tar.gz #extração
cd julia-d386e40c17/bin
sudo ln -s -f $PWD/julia /usr/local/bin/ #cria o atalho julia para o 0.6.2
cd $HOME

sudo -H pip install --upgrade pip
sudo -H pip install jupyter
sudo -H pip install urllib3[secure]
echo  "\n\n Julia Instalado \n\n"

#Julia packages
sudo chmod a+x Julia-Packages.jl
# os pacotes devem ser instalados na interface Julia

#Remove arquivos de instalação
sudo rm ~/julia-0.6.2-linux-x86_64.tar.gz
sudo rm ~/rstudio-0.99.903-amd64.deb
sudo apt-get autoremove
echo  "\n\n Arquivos de instalação removidos \n\n"
