# Git

O [Git](http://git-scm.com/) é uma ferramenta de controle de versão que
utilizaremos em conjunto com o [Github](http://github.com) para armazenar os
nossos tutoriais.

## Comandos

Para cada máquina nova:
```

git clone https://github.com/"usuário"/tutoriais/ (onde o usuário é o registrado
no Github)
git config user.name "Seu nome"
git config user.email "Seu email"
git config color.ui auto

git log (para ver o que aconteceu)
git remote add lamind https://github.com/ufpr-lamind/tutoriais
git fetch --all
git log
```

O comando `git log` possui os seguintes atributos opcionais para vizualizar na
forma de grafo:
````
--all --graph --oneline --decorate
````
## Atualizando o nosso (sempre atualize antes de começar o seu trabalho)

Suponha que os comandos acima já foram feitos
````
git fetch --all (Atualiza o lamind)
git merge lamind/master (Para que o nosso local vá para o lugar certo)
git push (Para atualizar o do site)
````
## Branchs
Branch é uma ramificação de um commit. Ao se criar um novo branch podemos
trabalhar o projeto em direções diferentes e mais tarde fundir com o branch
principal `(master branch)`.

Para criar branchs localmente usamos o comando `git branch <nomebranch>`. Ao
criarmos um branch não estaremos trabalhando nele ainda, para isso devemos
utilizar o comando `git checkout <nomebranch>`. É possível criar um branch e
automaticamente ir para ele, através do comando `git checkout -b <nomebranch>`.
Como o branch foi criado localmente precisamos torná-lo acessível remotamente,
para tal usamos o comando `git push -u <nomeremoto> <nomebranch>`,onde
<nomeremoto> é `https://github.com/"usuário"/tutoriais/` ou simplesmente
`origin`. **Atenção**: Caso o branch exista apenas localmente, ao realizar o
comando `git push` não retornará o resultado desejado.

Alternativamente podemos criar primeiramente o branch remoto. Na sua página do
projeto (https://github.com/"usuário"/projeto) há uma caixa de seleção
`Branch: master`. Ao clicá-la temos um campo onde podemos procurar ou criar
branchs. Após criado um novo branch remoto, para acessá-lo localmente
primeiramente usamos o comando `git fetch --all` e em seguida `git
checkout <nomebranch>`.

## Trabalhando e enviando o trabalho

Atente-se a estar no diretório `tutoriais`

```
git status (para ver a situação do trabalho)
git diff (para ver modificações)
git add ARQUIVO (para adicionar o arquivo ao commit)
git commit -m "MENSAGEM"
git push
```

Faça o *Pull Request* no Github:
  - No seu usuário, no repositório dos tutoriais, clique em `Pull Request`
      (No botão verde com o símbolo, ou no lugar logo acima dos arquivos).
  - Dê um título, uma explicação se necessário, e submeta o PR.
  - Quando o PR for aceito no ufpr-lamind, refaça a atualização.

    Caso abra o editor **VIM**, para sair aperte ESC 2 vezes, depois `:q!` e
    ENTER.

    Caso abra o editor **NANO**, pode usá-lo e para fecha-lo pressione Ctrl+X.

      **Atenção**: Se errar a mensagem e quiser corrigir imediatamente depois,
use `git commit -m "MENSAGEM CORRETA" --amend`.

Após ter sido aceito o PR é preciso atualizar os arquivos em relação ao projeto
principal
````
git fetch --all
git merge lamind/master
git push
````
e sempre prestando atenção em qual branch você est trabalhando.

## Conflitos

  - Se o PR der conflito, volte para seu trabalho e atualize.
  - Quando você tentar dar o merge, ele vai avisar o conflito.
  - Abra o arquivo e resolva o conflito, atentando-se para não deixar os
    símbolos extras `<`, `=` e `>` no arquivo.
  - Faça git add ARQUIVO para cada arquivo com conflito.
  - Faça o commit.
