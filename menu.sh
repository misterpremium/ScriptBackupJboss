#!/bin/bash
blue='\e[1;34m';
restore='\e[0m';



echo -e $blue 'Eliga opcion, hacer backup o ejecutar puppet (1/2)' $restore
read a

if [ $a == '1' ]; then
        echo -e $blue 'Comienza el backup de el jboss' $restore
        ./backup.exp
fi ;

