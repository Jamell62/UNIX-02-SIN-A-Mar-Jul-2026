uname -a #daba información del ordenador
which gpg # ubicacióin del binario de gpg
gpg --version # me da la version e informacion adicional
gpg --full-key-generate #genero la llave publica y privada
gpg -list-keys
gpg --list-secret-keys --keyid-format=long
gpg --armor --export-secret-keys odalissevillano1712@gmail.com
