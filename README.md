Bienvenidos a mi proyecto

Para ejecutar mi programa en su ordenador debe ejecutar los siguientes comandos en su terminal:

Iniciar un repositorio vacio:
git init

Luego debe copiar mi repo desde github:
git pull https://github.com/santiagof2000/tp-entorno

Una vez echo esto debe construir una imagen con el comando:
docker build -t [nombre]:[tag] .
ej: docker build -t tp-entorno:1.0 .

Despues debe ejecutar esa imagen:
docker run -it [nombre]:[tag]

El programa que correra en su terminal es un menu donde tiene distintas opciones para analisis de un texto que se manda por defecto pero que luego se puede cambiar.
Le aparecera un mensaje pidiendo que ingrese una opcion del 1 al 5 donde cada opcion corresponde a los siguientes programas:
1. statsWords.sh
Indicador estadístico de longitud de palabras (la más corta, la más larga y el
promedio de longitud).
2. statsUsageWords.sh
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). Es decir, filtrar las palabras que
tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
3. findNames.sh
Identificación de nombres propios (se identifican sólo si están en este formato
Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
Ejemplos: Mateo, Estonoesunnombre, Ana.
4. statsSentences.sh
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
promedio de longitud).
5. blankLinesCounter.sh
Contador de líneas en blanco

 
