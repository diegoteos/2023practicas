Patrón	        Significado
c	            carácter c
.	            cualquier carácter
^c	            empezar por el carácter c
c$	            terminar por el carácter c
c+	            1 o más caracteres c
c*	            0 o más caracteres c
c?	            0 o 1 caracteres c
\n	            nueva línea
\t	            tabulador
\	            escape, para escribir delante de caracteres especiales: ^ . [ ] % ( ) | * ? { } \
(cd)	        caracteres c y d agrupados
c|d	            carácter c o d
c{n}	        n veces el carácter c
c{n,}	        n o más caracteres c
c{n,m}	        desde n hasta m caracteres c
[a-z]	cualquier letra minúscula
[A-Z]	cualquier letra mayúscula
[0-9]	cualquier dígito
[cde]	cualquiera de los caracteres c, d o e
[c-f]	cualquier letra entre c y f (es decir, c, d, e o f)
[^c]	que no esté el carácter c
[[:alnum:]]	cualquier letra o dígito
[[:alpha:]]	cualquier letra
[[:digit:]]	cualquier dígito
[[:lower:]]	cualquier letra minúscula
[[:punct:]]	cualquier marca de puntuación
[[:space:]]	cualquier espacio en blanco
[[:upper:]]	cualquier letra mayúscula