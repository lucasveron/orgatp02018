#!/bin/bash
echo "----------------------------------------------------------------------------"
echo "----	         Organizacion de las Computadoras 66.20    		----"
echo "----------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "			Iniciando pruebas automatizadas"
echo " "
echo " "
echo " "
echo "Menu Vista"
echo "----------"
./tp0 -V

echo "###################################################################"
echo " "
echo " "

echo "Menu Ayuda"
echo "----------"
./tp0 -h
echo " "
echo " "
echo "###################################################################"
echo " "
echo " "

echo "Primer Prueba con parametros por Default (provista por la catedra)"
echo " "
./tp0 -o pruebaUno.pgm 
echo "-----------------------------------------------------"
echo " "



echo "Segunda prueba (provista por la catedra)"
echo " "
./tp0 -c 0.282-0.007i -w 0.005 -H 0.005 -o pruebaDos.pgm
echo "-----------------------------------------------------"
echo " "


echo "Tercera prueba sin parametro de salida" 
echo " "
./tp0 -c 0.282-0.007i -w 0.005 -H 0.005 
echo "-----------------------------------------------------"
echo " "


echo "Cuarta Prueba  Resolucion:10x10  Width/Height: 0.01  "
echo " "
./tp0 -c 0+0i -r 20x20 -w 0.01 -H 0.01 -o pruebaTres.pgm
echo "-----------------------------------------------------"
echo " "

echo "Quinta pruebia Centro: 0.2-07i Width/Height: 1 Salida: 'dos.pgm'"
echo " "
./tp0 -c 0.2-0.7i -w 1 -H 1 -o pruebaCuatro.pgm
echo "-----------------------------------------------------"
echo " "

echo "Sexta prueba modificamos  el seed"
echo " "
./tp0 -s -0.77777777777777777+0.177777777777777777778i  -o pruebaCinco.pgm
echo "-----------------------------------------------------"
echo " "

echo "Septima prueba modificamos el seed y hacemos zoom con Width/Height: 1"
./tp0 -s -0.77777777777777777+0.177777777777777777778i -w 1 -H 1  -o pruebaSeis.pgm
echo "-----------------------------------------------------"
echo " "

echo "Octava prueba cambiamos el seed y hacemos zoom con Width/Height: 2"
echo " "
./tp0 -s -0.835-0.2321i -w 2 -H 2  -o pruebaSeis.pgm
echo "-----------------------------------------------------"
echo " "

echo "Novena prueba testeo casos bordes parametros incorrectos"
echo " "
./tp0 
echo "-----------------------------------------------------"
echo " "

echo "PRUEBAS FINALIZADA"







