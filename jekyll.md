# Jekyll
É um gerador de sites estáticos que serão hospedados no GitHub.
## Instalação

````bash
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental
sudo apt-get update
sudo apt-get install ruby2.2 ruby2.2-dev gems make gcc nodejs

sudo gem install jekyll
````
## Criação dos arquivos básicos e executando localmente

````bash
jekyll new nome_do_site
cd nome_do_site
jekyll serve -w

````
[Página principal criada](localhost:4000)

## Introdução e Modificando o site
Existem na pasta principal arquivos do tipo `.md`(markdown), `.html` e pastas com `_`.
Podem ser abertos em qualquer editor de texto.
### Entendendo os arquivos
Tomemos o arquivo `_layouts/default.html`. Ele é um template de um layout.
No HTML, tudo tem `<` e `>`. `<html>` indica o inicio, `<body>` é o
begin{document}, `<div>` são blocos, etc. A parte com `{%`  e `{{` é do Jekyll.

- Linha (4): Inclui o arquivo `head.html`.
- Linha (8): Inclui o arquivo `header.html`.
- Linha (12): Usará a variável content, que para layouts quer dizer o que chamar
 no layout, i.e., o texto,e assim por diante.

 Abrindo o arquivo `_layout/page.html` vemos que o começo desse arquivo também é
 informação para layout. O conteúdo desse arquivo vai ficar dentro do
 `_layout/default.html`. Mas note que ele também tem um `{{ content }}` porque
 ele também é um layout e então não é usado independente.

Abriremos agora o arquivo `index.html`.
Ele começa com
````bash
---
layout: default
---
````
Que quer dizer que este não é um arquivo simples, e sim um arquivo para o Jekyll
 processar. O resto do texto do site, após processamento pelo Jekyll, é o que
 vai para no `content`. A grosso modo o arquivo index está dizendo
- Linha (5): Cria um bloco do tipo home.
- Linha (7): Cria o titulo Posts (do tipo page-heading).
- Linha (9): Cria uma lista.
- Linha (10): (Em Jekyll) Para cada post na lista de posts do site.
- Linha (11): Cria um item da lista.
- Linha (12): Escreva a data formatada.
- Linha (14): Cria o subtitulo.
- Linha (15): Cria o Link para o post no titulo do post.
- Linha (16): Fecha o subtitulo.
- Linha (17): Fecha o item da lista.
- Linha (18): Fecha o for do Jekyll.
- Linha (19): fecha a lista.
- Linha (23): Fecha o bloco

Abrindo o arquivo `about.md`, notemos que a página também tem o esquema de
cabeçalho mas tem informação a mais. Além do layout que ela usa, que é o page,
ela também informa o title, i.e. título, e o permalink, que diz qual o link que
é pra ser criado com essa página. Note que o layout page usa `{{ page.title }}`
dentro do texto,então é esse o title. O resto do arquivo é bem diferente dos de
html pois esse é um arquivo de markdown.

Pra fazer as páginas usuais, tipo documentos, usa-se essas páginas soltas dentro
do arquivo. Colocando o permalink, você escolhe onde ele vai ficar, e com que
nome. Caso o, ela fica com o nome dado, direto na raiz (o que não é
aconselhavel).

Na pasta `css` contem a folha de estilos usados na página, porém não trataremos
dela.

Na pasta `_post` ficam os arquivos de posts. Abrindo o arquivo lá dentro, vemos
que ele tem um cabeçalho um pouco maior, um nome maior também. Ele usa o layout
post, que também herda dos outros e cada arquivo tem que seguir o padrão
`YYYY-MM-DD-nome-do-post.markdown`, onde `YYYY` é o ano, `MM` é o mês e `DD` é o
 dia. Seguir o padrão é importante, pois assim ficará automaticamente ordenado.
Por fim existe o arquivo  `_config.yml` que são as configurações tipo nome e
alguns outros dados. Caso altere algum dado do arquivo, será necessário
interromper processo do jekyll (apertando Control+C no terminal onde o jekyll
esta sendo executado) e re-executando "jekyll server -w" para rodar de novo.

## Tornando a página acessivel a outros
Acesse a sua conta no Github e crie um repositório chamado
`seuusuario.github.io`. Supondo que já tenha realizado a configuração do git
(caso contrario acesse o tutorial do git)

````bash
git init
git add .
git commit -am "Update pagina"
git remote add origin
"https://seuusuario@github.com/seuusuario/seuusuario.github.io"
git remote add site https://github.com/ufpr-lamind/ufpr-lamind.github.io
git push -u origin master
````
**Observação** Caso erre `git remote set-url origin
"https://novoseuusuario@github.com/novoseuusuario/novoseuusuario.github.io"`.

## Atualizando arquivos
Como é utilizado o git é preciso atualizar os dados locais antes de alterá-los,
o que pode ser feito pelso comandos
````bash
git fetch --all
git merge site/master
git push
````
Estando a página no ar, ao se alterar arquivos é necessario atualizar os dados
remotos. Para tal, utilize os comandos do git.


## Acessando a página
Para acessar a página basta acessar o endereço `seuusuario.github.io`.

## Informações adicionais
[jekyll](https://jekyllrb.com/)
[HTML e CSS](http://www.w3schools.com)
