# Atom+Julia
Através de pacotes iremos ter a possibilidade de utilizar julia diretamente pelo
Atom.
Para tal, será necesário a instalação dos pacotes no Atom e no Julia.
## Instalando Pacotes no Atom:
Temos a opção de instala-los através do menu iterativo do Atom`Edit >
Preferences > Install ` (`File > Preferences > ...` no Windows) e instalar os
pacotes

- language-julia
- ink
- julia-client

ou através do terminal `apm install language-julia ink julia-client`.

## Instalando Pacote no Julia
Abra o julia digitando `julia` no console e em seguida `Pkg.add("Atom")`.


O último passo será garantir que o Atom encontre o Julia - se o comando `julia`
não está no caminho padrão, você precisará ir até as configuraçoes do
julia-client (`julia-client seetings`) e indicar o caminho para o arquivo
binário do Julia, que será `[onde o Julia foi instalado]/bin/julia` (ou
`[o mesmo]\bin\julia.exe` no Windows).

Finalmente, dentro do Atom, vá na guía `Packages > Julia > Toggle Console`. No
console que se abriu podemos digitar expressões do Julia ( como `2+2`) e
pressionando `Enter` avaliaremos elas. Na primeira vez pode demorar um pouco,
mas nas próximas vezes sera muito mais rápido.
