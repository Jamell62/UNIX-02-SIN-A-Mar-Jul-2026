 1  git fetch upstream
    2  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_g2
    3  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    4  git push -u origin eval_p2_1_g2
    5  history
    6  gir remote -v
    7  git remore -v
    8  git remote -v
    9  find kepler/ -ls
   10  kepler/
   11  pwd
   12  ls
   13  ls evaluation/
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
   24  history
   25  mv kepler/sensores.log kepler/registros/sensores.log
   26  mv kepler/ajustes.old kepler/ajustes.conf
   27  ls kepler/
   28  ls kepler/registros/
   29  git add .
   30  git commit -m "Fix problema 2: archivos movidos y renombrados"
   31  history
   32  chmod 600 kepler/registros/sensores.log
   33  ls -l kepler/registros/sensores.log
   34  git add .
   35  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   36  history
   37  chmod u+x kepler/runner.sh
   38  chmod o-w kepler/ajustes.conf
   39  ls -l kepler/runner.sh
   40  ls -l kepler/ajustes.conf
   41  chmod o-w kepler/runner.sh
   42  ls -l kepler/runner.sh
   43  ls -l kepler/ajustes.conf
   44  git add .
   45  git commit -m "Fix issue 4: symbolic permissions fixed"
   46  history
   47  chmod u+s kepler/runner.sh
   48  ls -l kepler/runner.sh
   49  git add .
   50  git commit -m "Fix issue 5: SUID enabled in runner.sh"
   51  chmod +t /tmp/kepler_zone
   52  ls /tmp/
   53  mkdir /tmp/kepler_zone
   54  chmod +t /tmp/kepler_zone
   55  ls -ld /tmp/kepler_zone
   56  git add .
   57  git commit -m "Fix issue 6: sticky bit in /tmp/kepler_zone"
   58  cat > /tmp/mi_llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: vega
Name-Email: vega@kepler.lab
Expire-Date: 0
%commit
EOF

   59  gpg --batch --generate-key /tmp/mi_llave.batch
   60  gpg --list-keys vega@kepler.lab
   61  gpg --encrypt --recipient vega@kepler.lab     --output kepler/registros/sensores.log.gpg     kepler/registros/sensores.log
   62  ls kepler/registros/
   63  git add .
   64  git commit -m "Fix problema 7: llave GPG generada y sensores.log cifrado"
   65  gpg --clearsign --default-key vega@kepler.lab     --output kepler/ajustes.conf.asc     kepler/ajustes.conf
   66  ls kepler/
   67  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   68  gpg --detach-sign --default-key vega@kepler.lab     --output kepler/runner.sh.sig     kepler/runner.sh
   69  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   70  git add kepler/runner.sh.sig
   71  git commit -m "Fix problem 8: GPG signatures corrected and created"
   72  history