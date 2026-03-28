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
gpg --output doc_cifrado.txt --encrypt --recipient #Encrypts a file for a specific recipient and saves it as doc_cifrado.txt
gpg --decrypt Pau_cifrado.txt #Decrypts the encrypted file Pau_cifrado.txt using your private key
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #Digitally signs doc_no_cifrado.txt and saves the signed readable file as doc_no_cifrado_firmado.txt
cat doc_no_cifrado_firmado.txt #Displays the content of the signed text file in the terminal
gpg --verify JenMICOMPA_doc_no_cifrado_firmado.tx #Verifies the digital signature of the signed file
 gpg --edit-key #Opens interactive mode to edit a GPG key (trust, sign, add info)
 gpg --sign-key #Signs another person's public key to mark it as trusted
 gpg --verify Pau_no_cifrado_firmado.txt #Verifies the signature of a signed file
 gpg --output doc_no_cifrado_firmado_binario.txt --sign #Creates a binary signed version of a file
 gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #Creates a detached digital signature file
 gpg --verify micompa_firma_separada_doc_no_cifrado.sig doc_no_cifrado.txt #Verifies a detached signature using the original file
 gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient XXXXXXX doc_no_cifrado.txt #Encrypts and signs a file for a specific recipient
 gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient XXXXXXX doc_no_cifrado.txt #Decrypts and validates an encrypted and signed file
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt JMICOMPA_doc_cifrado_y_firmado.txt
cat doc_cifrado_y_firmado_descifrado_y_validado.txt #Displays the decrypted and verified file content