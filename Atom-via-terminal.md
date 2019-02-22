# Utilizando Atom via terminal
Por motivos de praticidade abordaremos como instalar pacotes para o Atom através
do terminal.
Para instalar um pacote usamos o comando `apm install`:
- `apm install <nome_pacote>` para instalar a última versão.
- `apm install <nome_pacote>@<versão_pacote>` para instalar uma versão
especifica.
Por exemplo `apm install emmet@0.1.5` instala a versão `0.1.5` do pacote Emmet.

Você tambem pode usar `apm` para encontrar novos pacotes para instalar. Se você
rodar `apm search`, você pode pesquisar pelo registro de pacotes como o termo de
pesquisa. Por exemplo `apm search julia` mostrará os resultados de pacotes que
envolvam o Julia. Você pode usar `apm view` para ver mais informações sobre um
pacote especifico.
