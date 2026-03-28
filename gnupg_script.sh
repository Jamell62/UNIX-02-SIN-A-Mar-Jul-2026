uname -a #Shows system information about your computer.
which gpg #Shows the location of the gpg binary.
gpg --version # Shows: GPG version algorithmsinformation
gpg --full-key-generate #Generate keys
gpg -list-keys #Show public keys
gpg --list-secret-keys --keyid-format=long #Show private keys
gpg --armor --export-secret-keys odalissevillano1712@gmail.com #Export private key
gpg --list-keys #Shows all public keys stored in your GPG keyring
gpg --import MICOMPA_llave_publica.asc #Import public key
echo "este mensaje es secreto" > doc_no_cifrado.txt
ls #Lists files and directories in the current folder.
cat doc_no_cifrado.txt #Displays the content of the file on the terminal.