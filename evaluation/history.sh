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

problema 3
   32  chmod 600 kepler/registros/sensores.log
   33  ls -l kepler/registros/sensores.log
   34  git add .

problema 4
 37  chmod u+x kepler/runner.sh
   38  chmod o-w kepler/ajustes.conf
   39  ls -l kepler/runner.sh
   40  ls -l kepler/ajustes.conf
   41  chmod o-w kepler/runner.sh
   42  ls -l kepler/runner.sh
   43  ls -l kepler/ajustes.conf
   44  git add .
   45  git commit -m "Fix issue 4: symbolic permissions fixed"