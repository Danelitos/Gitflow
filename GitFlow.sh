#!/bin/bash
RESET="\e[0m"
RED="\e[31m"
BLUE="\e[34m"
echo $RED Cúal es la rama que quieres crear y hacer modificaciones? $RESET
read rama
echo "\n" $RED Estas son las ramas que tienes y la que tiene el * es en la que estas actualmente $RESET "\n"
git branch
echo $RED Creamos la rama $rama y nos movemos a ella $RESET "\n"
git checkout -b $rama
echo $RED Añadimos los cambios que hayamos hecho en nuestro proyecto $RESET "\n"
git add .
echo $RED Hacemos commit y damos información de lo que hemos modificado $RESET "\n"
git commit
git push origin $rama
echo $RED Nos movemos a la rama de trabajo, cúal es tu rama de trabajo? $RESET
read ramaTrabajo
git checkout $ramaTrabajo
echo "\n" $RED Hacemos merge de $rama a develop $RESET "\n"
git merge --no-ff $rama
git push origin $ramaTrabajo
echo $RED Finalmente borramos $rama y luego también hay que hacerlo de forma física en gitHub $RESET "\n"
git branch -d $rama
