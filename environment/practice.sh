#!/bin/bash

# 1. echo komandas izmēģinājums
echo "Printing text with newline"
touch test_file_0.txt
echo 'sveiki' >> test_file_0.txt



#2.  Piemērs ar .sh faila izveidi un palaišanu
touch example_script.sh
echo 'echo sveiki' >> example_script.sh 
bash example_script.sh



# 3. Jārediģē šī norāžu virkne (sākot no jūsu vārda direktorijas), lai tā veiksmīgi uz ekrāna parādītu sekojošās divas rindiņas:
# sveiki
# /home/<jusu_varda_direktorija>/ubuntu/uzdevums/test_directory_1
mkdir uzdevums
cd uzdevums
mkdir test_directory_1
mkdir test_directory_2
mkdir test_directory_3
touch test_file.txt
mv test_file.txt test_directory_1
cd test_directory_1
echo 'sveiki' >> test_file.txt
mv test_file.txt /home/ubuntu/uzdevums/
cd ..
cat test_file.txt
pwd



# 4.  Jānoskaidro ko dara šīs komandas un tās jāizmēģina:
lscpu
lsblk
python3 --version
java --version
df



# 5. Jāieliek teksta failā json_example.json kāds no .json failiem, kas atrodas adresē https://json.org/example.html
# Hint: cat komandai ne vienmēr vajag argumentu


# 6.  Jāizmēģina sekojošās komandas. Vai nostrādāja? Kāpēc? Ja nepieciešams:
apt update
apt install lolcat


# Jānoskaidro ko dara pakotne 'lolcat'. Padoms: izmēģiniet komandu: man
# Kad ir noskaidrots, izmēģiniet sekojošo komandu:
lolcat json_example.json


# Atrodiet veidu kā noņemt 'lolcat' pakotni.
# Padoms: apt pati par sevi ir pakotne, kas sagaida argumentus sekojošā formātā: apt <install>/<remove> <pakotnes nosaukums>
#  Iztestējiet vai ir izdevies, vēlreiz palaižot sekojošo komandu:
lolcat json_example.json



# Noskaidrojiet ko dara sekojošā komanda un izmēģiniet to:
ls -alh



# Noskaidrojiet cik vietas aizņem /bin direktorija uz jūsu linux ierīces



# Izmēģininiet sekojošo komandu. Vai izdevās? Kāpēc?
rm <jusu_varda_direktorija>/uzdevums/test_directory_2



# Atveriet komandas 'rm' manuāli
man rm



# Atrodiet veidu kā izdzēst direktoriju test_directory_2
