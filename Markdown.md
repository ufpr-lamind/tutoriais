# Markdown

Markdown é a linguagem de marcação que utilizaremos para a documentação das
atividades no LAMIND e dos tutoriais de manutenção do laboratório.

## Introdução (tradução do Markdown Basics)

### Separar Bloco de Texto (Paragrafo)
Após digitado texto, aperte duas vezes o `ENTER`.
Ex:
````bash
Bloco de Texto 1.

Bloco de Texto 2.
````

Bloco de Texto 1.

Bloco de Texto 2.

### Título
Você pode criar um título adicionando um ou mais ` # ` antes do texto do título.
O número de `#` determina o tamanho da fonte.

````bash
# Titulo 1

## Subtitulo 1.1

# Titulo 2
````


Quanto mais `#` empregados menor será a fonte do Título.

### Citações
Você pode indicar uma citação usando `>`.
````bash
> "Texto da citação." - autor
````
> "Texto da citação." - autor

### Estilizando o texto
Você pode fazer o texto em *italico* ou **negrito**.

````bash
*texto em italico*
**texto em negrito**
````

### Listas
#### Listas não ordenadas
Para criar uma lista não ordenada, preceda os itens por ou `*` ou `-`.
````bash
* Item 1
* Item 2
* Item 3


- Item 1
- Item 2
- Item 3
````
* Item 1
* Item 2
* Item 3


- Item 1
- Item 2
- Item 3


#### Listas ordenadas
Para criar uma lista ordenada preceda os itens com números.

````bash
1. Item 1
2. Item 2
3. Item 3
````
1. Item 1
2. Item 2
3. Item 3

#### Lista aninhada
Para criar uma lista aninhada, indentando os itens da lista com dois espaços.
```bash
1. Item 1
  1. Um corolario do item acima
  2. Um outro ponto a se considerar
2. Item 2
  * Um corolario que não precisa ser ordenado
    * Uma identação com quatro espaços porque é dois a mais que o item acima
    * Podemos criar uma nova lista  se quisermos

```
1. Item 1
  1. Um corolario do item acima
  2. Um outro ponto a se considerar
2. Item 2
  * Um corolario que não precisa ser ordenado
    * Uma identação com quatro espaços porque é dois a mais que o item acima
    * Podemos criar uma nova lista  se quisermos

### Formatação do codigo
#### Formatação na linha
 Usando uma unica crase  `` ` `` pode-se formar o texto num bloco distinto.

````bash
Exemplo de texto onde destaremos `isso`.
````
Exemplo de texto onde destaremos `isso`.

#### Formatação de multiplas linhas
Use multiplas crases para formar blocos. Digite
````bash

```
1*1=1
1*2=2
1*3=3
```
````
E este será o resultado

```
1*1=1
1*2=2
1*3=3
```
### Links

Para criar um link envolvendo o texto que será mostrado entre `[]` e o endereço entre `()`.
````bash
[Texto](endereço)
````
[Texto](endereço)

### Comentarios
Para escrever algo que deseja-se manter no arquivo mas não deve ser visualizado
utilizamos
````bash
<!-- Texto-->
````



## Referências

  - [Markdown Basics](https://help.github.com/articles/markdown-basics/)
  - [Github Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/)
