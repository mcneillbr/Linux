# procura arquivos que foram acessado nos ultimos 12 minutos
find /tmp -iname '*.*' -amin -12 -type f -exec stat '{}' \;

# Com este comando, você buscará por arquivos que foram modificados nos último dia
find /tmp -iname '*.*' -atime 1 -type f -exec stat '{}' \;

# Com este comando, você buscará por arquivos que foram modificados com menos de um dia
find /tmp -iname '*.*' -atime -1 -type f -exec stat '{}' \;


https://www.secnet.com.br/blog/exemplos-de-como-utilizar-o-comando-find-no-linux

#Este comando fará uma busca pelo arquivo “seuarquivo.php” no diretório presente.
find -iname seuarquivo.php

#Este comando buscará no diretório “/home/user ” pelo arquivo “seuarquivo.php”.
find /home/user -iname seuarquivo.php

#Este comando ira vasculhar todos os arquivos de seu computador a procura de quais contém a palavra “seutexto”.
find ./* -type f -exec grep -l seutexto {} \;

#Este comando irá procurar na pasta “/home” arquivos que possuem um tamnho maior que 2 gigabytes
find /home -size +2G

#este encontrará arquivos com exatemente 2 gigabytes
find /home -size 2G

#com este comando você irá encontrar todos os arquivos com a permisão 644 na pasta “/home”.
find /home -type f perm 644
