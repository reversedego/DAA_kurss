Šajā failā ir pamācības kā lietot ssh pieslēgšanos gan uz MacOS/Linux, gan Windows
## MacOS / Linux  
Lai lietotu attālināto pieslēgšanos ar ssh  ar operētājsistēmām uz Linux vai macOS bāzes, jāveic sekojošās darbības:
1. Jāielādē un zināmā vietā jānovieto .pem fails.
2. Ļoti iespējams, ka operētājsistēma pēc noklusējuma piešķir pārāk lielas piekļuves (permission denied kļūdas, mēģinot pieslēgties).Tāpēc terminālī ar kuru ir ieiets direktorijā (savam datoram), kurā atrodās .pem fails 
(visas sekojošās darbības ir jāizpilda šajā direktorijā) jāizpilda sekojošā komanda, aizstājot faila nosaukumu ar pareizo.  

`chmod 600 random_keyfile.pem`
  
3. Pie attālinātās pieslēdzās ar sekojošo komandu:

`ssh -i RCS_key.pem ubuntu@random_IP_adrese`

Pēc komandas izpildes, visticamāk tiks uzdots jautājums par to vai vēlaties turpināt pieslēgties. Jāuzraksta 'yes' un jānospiež enter.

4. Lai palaistu jupyter notebook uz ATTĀLINĀTĀS mašīnās uz porta 9999, **UZ TĀS** jāizpilda sekojošā komanda:  

`jupyter-notebook --no-browser --port=9999`  

Redzēsiet nedaudz krāsaina teksta, nokopējiet un kaut kur novietojiet (notepad vai word fails) tokenu (visu, kas seko aiz 'token=')

5. Lai savienotu attālinātās mašīnas portu 9999 (un tādējādi arī ar uz tās darbināto Python editoru) ar sava datora portu 9999, jāizpilda sekojošā komanda:
`ssh -N -i random_keyfile.pem -f -L localhost:9999:localhost:9999 ubuntu@random_IP_adrese`

6. Tagad varat savā web brauzerī ierakstīt localhost:9999 un jums būtu jāatverās lapai, kurā tiek prasīts pieslēgšanās tokens, kurš ir redzams termināļa logā, kurā palaidāt jupyter-notebook komandu.   
Šo logu nedrīkst aiztaisīt, lai turpinātu darboties ar notebooku.

## Windows
1. Sekojiet PuTTy instalāciju norādēm iekš Instalacijas.md faila  
2. 
