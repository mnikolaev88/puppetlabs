PMODULE=$1

if [ $# -eq 1 ];then

 cp -rp .plantilla $PMODULE
 if [ $? -eq 0 ];then

   for i in $(find $PMODULE -type f -name "*.pp" -size +0)
   do 
     sed "s/plantilla/$PMODULE/g" $i > ${i}.bak && mv ${i}.bak ${i}
   done && echo "El nuevo modulo de Puppet \"$PMODULE\" se ha creado satisfactoriamente!!!"

 fi

else

  echo "$basename $0 nombremodulo"

fi
