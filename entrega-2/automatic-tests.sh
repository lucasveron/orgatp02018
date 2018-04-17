#!/bin/bash

echo "##############################################################################"
echo "########################## Tests automaticos  ################################"
echo "##############################################################################"


#DIRECTORIO=/root1
#echo "El directorio ${DIRECTORIO} existe"

echo "Se guardaran los archivos resultantes de los tests en el directorio ./outputs-automatic-tests"

if [ -d "./outputs-automatic-tests" ]
then
   echo "El directorio ./outputs-automatic-tests existe, por lo tanto se elimina su contenido."
   rm -r outputs-automatic-tests/*
else
   echo "El directorio ./outputs-automatic-tests no existe, por lo tanto se creara."
   mkdir outputs-automatic-tests
fi


echo "###----------###    COMIENZA la generacion de imagenes automaticamente.    ###----------###"

./tp0 -r 500x500 --center 0.5+0.5i -w 25 --height 10 -s 0.285-0.01i --output ./outputs-automatic-tests/prueba1.PGM
echo "Se genero el archivo prueba1.PGM, para lo cual se especifico center, w, height, s y output."

./tp0 --resolution 700x700 -c 0.5+0.5i --width 10 -H 30 --seed -1.3+0.00525i -o ./outputs-automatic-tests/prueba2.PGM
echo "Se genero el archivo prueba2.PGM, para lo cual se especifico resolution, c, width, H, seed y o."

./tp0 -c 0.5+0.5025863i --width 5 -H 8 --seed -0.72-0.196i -o ./outputs-automatic-tests/prueba3.Pgm
echo "Se genero el archivo prueba3.Pgm, para lo cual se especifico c, width, H, seed y o."

./tp0 --resolution 100x300 --width 10 -H 5 --seed -0.1+0.87i -o ./outputs-automatic-tests/prueba4.pGm
echo "Se genero el archivo prueba4.pGm, para lo cual se especifico resolution, width, H, seed y o."

./tp0 --resolution 500x300 -c 0.7+0.9i -H 5 --seed -0.51-0.601i -o ./outputs-automatic-tests/prueba5.pgM
echo "Se genero el archivo prueba5.pgM, para lo cual se especifico resolution, c, H, seed y o."

./tp0 --resolution 695x350 -c -0.956+0.15236i --width 3 --seed 0.285-0.01i -o ./outputs-automatic-tests/prueba6.pgm
echo "Se genero el archivo prueba6.pgm, para lo cual se especifico resolution, c, width, seed y o."

./tp0 --resolution 546x674 -c -0.956+0.15236i --width 3 --height 10 -o ./outputs-automatic-tests/prueba7.pgm
echo "Se genero el archivo prueba6.pgm, para lo cual se especifico resolution, c, width, height y o."

./tp0 --resolution 356X523 -c -0.5201-0.15236i --width 3 --height 5 -o - > ./outputs-automatic-tests/outputStdout.pgm
echo "Se ejecuto con salida estandar, que se redirecciono al archivo outputStdout.pgm, para lo cual se especifico resolution, c, width, height y o (stdout, como - )."

./tp0 -o ./outputs-automatic-tests/uno.pgm
echo "Se genero el archivo uno.pgm, para lo cual se especifico o."

./tp0 -c 0.282-0.007i -w 0.005 -H 0.005 -o ./outputs-automatic-tests/dos.pgm
echo "Se genero el archivo dos.pgm, para lo cual se especifico c, w, H y o."

echo "###----------###    FIN de la generacion de imagenes automaticamente.    ###----------###"

echo "###------------------------------------------------------------------------###"
echo "###------------------------------------------------------------------------###"
echo "###------------------------------------------------------------------------###"

echo "###----------###    COMIENZA la validacion de los parametros.    ###----------###"

varError=$(./tp0 -r 54x45d 2>&1)
if [ "$varError" = "[Error] La resolucion especificada es incorrecta." ]
 then 
  echo "./tp0 -r 54x45d corrio ...... [OK]";
else
 echo "./tp0 -r 54x45d corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -r 54A45 2>&1)
if [ "$varError" = "[Error] La resolucion especificada es incorrecta." ];
 then echo "./tp0 -r 54A45 corrio ....... [OK]";
else
 echo "./tp0 -r 54A45 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -r -133x23 2>&1)
if [ "$varError" = "[Error] La resolucion especificada es incorrecta." ];
 then echo "./tp0 -r -133x23 corrio ..... [OK]";
else
 echo "./tp0 -r -133x23 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -c 896-233 2>&1)
if [ "$varError" = "[Error] Formato incorrecto del numero complejo para el centro." ];
 then echo "./tp0 -c 896-233 corrio ..... [OK]";
else
 echo "./tp0 -c 896-233 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -c i33-33 2>&1)
if [ "$varError" = "[Error] Formato incorrecto del numero complejo para el centro." ];
 then echo "./tp0 -c i33-33 corrio ...... [OK]";
else
 echo "./tp0 -c i33-33 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -c 3d4+56i 2>&1)
if [ "$varError" = "[Error] Formato incorrecto del numero complejo para el centro." ];
 then echo "./tp0 -c 3d4+56i corrio ..... [OK]";
else
 echo "./tp0 -c 3d4+56i corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -w -31 2>&1)
if [ "$varError" = "[Error] Formato incorrecto para el ancho." ];
 then echo "./tp0 -w -31 corrio ......... [OK]";
else
 echo "./tp0 -w -31 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -w 3e 2>&1)
if [ "$varError" = "[Error] Formato incorrecto para el ancho." ];
 then echo "./tp0 -w 3e corrio .......... [OK]";
else
 echo "./tp0 -w 3e corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -H -5.25 2>&1)
if [ "$varError" = "[Error] Formato incorrecto para el alto." ];
 then echo "./tp0 -H -5.25 corrio ....... [OK]";
else
 echo "./tp0 -H -5.25 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -H 3e 2>&1)
if [ "$varError" = "[Error] Formato incorrecto para el alto." ];
 then echo "./tp0 -H 3e corrio .......... [OK]";
else
 echo "./tp0 -H 3e corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -o uno. 2>&1)
if [ "$varError" = "[Error] Extension incorrecta para el archivo de salida." ];
 then echo "./tp0 -o uno. corrio ........ [OK]";
else
 echo "./tp0 -o uno. corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -o uno.txt 2>&1)
if [ "$varError" = "[Error] Extension incorrecta para el archivo de salida." ];
 then echo "./tp0 -o uno.txt corrio ..... [OK]";
else
 echo "./tp0 -o uno.txt corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi

varError=$(./tp0 -o uno.pgm23 2>&1)
if [ "$varError" = "[Error] Extension incorrecta para el archivo de salida." ];
 then echo "./tp0 -o uno.pgm23 corrio ... [OK]";
else
 echo "./tp0 -o uno.pgm23 corrio con ERROR!!! - Resultado obtenido: ";
 echo $varError
fi


echo "###----------###    FIN de la validacion de los parametros.    ###----------###"

echo "##############################################################################"
echo "########################## FIN Tests automaticos  ################################"
echo "##############################################################################"
