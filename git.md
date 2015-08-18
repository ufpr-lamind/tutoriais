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
      (No botão verde com o símbolo, ou no lugar logo acima dos arquivos);
  - Dê um título, uma explicação se necessário, e submeta o PR.
  - Quando o PR for aceito no ufpr-lamind, refaça a atualização.

    Caso abra o editor **VIM**, para sair aperte ESC 2 vezes, depois `:q!` e
    ENTER

    Caso abra o editor **NANO**, pode usá-lo e para fecha-lo pressione Ctrl+X

      **Atenção**: Se errar a mensagem e quiser corrigir imediatamente depois,
use `git commit -m "MENSAGEM CORRETA" --amend`

## Conflitos

  - Se o PR der conflito, volte para seu trabalho e atualize
  - Quando você tentar dar o merge, ele vai avisar o conflito
  - Abra o arquivo e resolva o conflito, atentando-se para não deixar os
    símbolos extras `<`, `=` e `>` no arquivo
  - Faça git add ARQUIVO para cada arquivo com conflito
  - Faça o commit
