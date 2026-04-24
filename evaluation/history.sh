problema 1
   14  cd evaluation
   15  find kepler/ -ls
   16  ls kepler/
   17  ls kepler/registros/
   18  mv kepler/docs kepler/registros
   19  mkdir kepler/plantillas
   20  ls
   21  ls kepler/
   22  git add .
   23  git commit -m "Fix problema 1: estructura de directorios corregida"

problema 2
   mv kepler/sensores.log kepler/registros/sensores.log
   mv kepler/ajustes.old kepler/ajustes.conf
   ls kepler/
   ls kepler/registros/
   git add .
   git commit -m "Fix problema 2: archivos movidos y renombrados"