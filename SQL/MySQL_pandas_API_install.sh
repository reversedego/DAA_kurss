# 1. Jāielādē un jāinstalē anaconda python. Spiežam yes un enter, kur vajag....
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
bash Anaconda3-2019.10-Linux-x86_64.sh
# 2. Tagad jāiziet/jāieiet no sesijas vai lietojot putty, jā jāduplicē (labā peles poga uz atvērtā termināļa loga -> duplicate session)
# 3. Iztestējam vai instalācija ir notikusi pareizi, terminālī izpildot komandu 'conda'


# 4. Update`ojam pakotņu indeksu un instalējam mysql servera pakotni
sudo apt update
sudo apt install mysql-server

# 5. iestādam paroli, ko lietosim, pieslēdzoties pie mysql vai nu caur komandrindu vai ar python. 

# 6. Instalējam linux bibliotēku un python bibliotēku, lai Python - MySQL API strādātu
sudo apt install libmysqlclient-dev
conda install -c anaconda mysql-connector-python
conda install mysqlclient

# 7. Ielogojamies mysql komandrindā, izmantojot sekojošo komandu. Ievadam paroli, ko iestatījām mysql-server instalācijas laikā
mysql -u root -p

# 8. Sekojošās 3 rindiņas ir SQL kods. Izpildiet tās mysql komandrindā kā root lietotājs.
CREATE USER 'ubuntu'@'localhost' IDENTIFIED BY 'parole';
GRANT ALL PRIVILEGES ON *.* TO 'ubuntu'@'localhost';
create database trenins;

# 9. Pārliecinamies, ka ir izveidots ar MySQL autorizēts lietotājs 'ubuntu', kuram atļauj pieslēgties no 'localhost' ar sekojošo komandu,
# ievadot paroli, kas tik lietotājam piešķirta. Kodā defaults ir 'parole'
mysql -u ubuntu -p