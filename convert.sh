#Script para converter imagens em formato .jpg para .png

#Autor: Guilherme Mendes

#!/bin/bash

echo "inicializando"

cd imagens-livros

for imagem in *.jpg
do
        echo $imagem
        img_sem_ext=$(ls $imagem | awk -F. '{print $1}')
        convert $imagem $img_sem_ext.png
done

echo "finalizando"

cd ..


