# Lakoniski par to kā rakstīt kodu  


0\. Zini pamatus programmēšanas konceptus un terminoloģiju, izvēlies valodu, visticamāk tādu, kuru zini. Saproti problēmu. Saskaldi problēmu secīgos soļos. **Pieraksti soļus**.

Q: Kā programmtistiski risināt problēmu?  
A: Google + Atslēgvārdi = Piemēri. 

1\. Uzzini terminoloģiju, pēti kā veikt kādu no šiem soļiem. Saskaldi soļus sīkāk. ideālā gadījumā atrodi piemēru, kas dara kādu soli. Ideālā gadījumā pirmo un pēdējo soli.

1\. Sākot ar pirmo un pēdējo soli un virzoties uz vidu, **uzraksti koda skeletu** ar VISĀM komponentēm (funkcijas, argumenti, ko atgriezīs). Kā tieši funkcijas darīs kaut ko, domā vēlāk. Katrai komponentei beigu versijā būtu jāsatur maksimālais daudzums ar darbībām, kuras ir neatkarīgas no citām komponentēm.  

* Mēs nevaram atrisināt visas savas problēmas zīmējot bildītes, bet noteikti varam mēģināt. 


* Neraksti funkciju bez argumentiem, kura piekļūst kāda no situācijas atkarīga faila saturam, no turienes kaut ko ielasa, kaut ko izdara un tad kaut ko ieraksta.


* Raksti trīs funkcijas. Vienu faila izvēlei, vienu lasīšanai, vienu rakstīšanai. Lasīšanas/rakstīšanas funkcijām divi argumenti: faila izvēles funkcijas izvade + kas jāraksta/jālasa.


2\. Nevajag izgudrot riteni no jauna. Piemēri bieži lieto bibliotēkas. Atrodi bibliotēkas dokumentāciju un tās dokumentācijā atrodi bibliotēkas lietošanas piemērus.  
**Raksti vienkārši**.  
* Kad tev rokās ir āmurs, viss izskatās pēc naglas. Ja bibliotēka lietas sarežģī, nevis risina, atrodi citu bibliotēku un citu piemēru.    

2\. Vairāk koda - vairāk kļūdu. Lieto biliotēku.  
**Raksti vienkārši un īsi**.  

2\. Kods daudz biežāk tiek lasīts, nekā rakstīts. Visvairāk savu kodu lasīsi tu pats.  
**Raksti vienkārši, īsi un pārskatāmi**.  
Un ar komentāriem par savu domu procesu.


Q: Kas ir spageti kods?  
A: ["In simple terms spaghetti code is any code in any programming language in which it is not possible to trace the next post of execution, or at least difficult to determine where the next point goes in response of one action."](https://stackoverflow.com/questions/195520/what-is-spaghetti-code).  
Spagetti kods tipiski ir slikts jo nav vienkāršs, pārskatāms vai īss. 

3\. Raksti funkciju saturu. Nav obligāti jāpabeidz viena pirms ķeries pie nākošās. Turi prātā lielo bildi. Turpini meklēt piemērus. Ja vajag apdeitot koda skeletu, atgriezies nulltā punkta un atkārto procesu. Pieraksti atziņas, domu procesu komentāros.

4\. Ja strādā, tad testē katru funkciju atsevišķi, mēģinot viņas salauzt ar viltīgiem argumentiem. Ja nestrādā, atgriezies pie 3. punkta.  

5\. ???  

6\. Rezultātā - Strādājošs, pareizi strādājošs, pārdomāts vai pat vienkāršs kods, kuram viegli pielikt papildu funkcionalitātes vēlāk. 