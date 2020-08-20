# # All the code seperated by an empty line is to be executed line by line
# # THIS SCRIPT IS NOT TO BE EXECUTED ALL AT ONCE
echo 'This script is meant to be executed. You are supposed to execute the lines seperately'
exit



# # 1.
# # LC and general installations
echo 'export LC_ALL=C' >> ~/.bashrc
source ~/.bashrc

sudo apt update

sudo apt install docker.io

sudo docker ps -a

sudo apt install unzip



# # 2. 
# # Python and jupyter nb installations
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh

bash Anaconda3-2019.10-Linux-x86_64.sh



# # 3.
# # Spark2.4 installations and linking with pyspark
sudo apt install openjdk-8-jre

curl -O https://downloads.apache.org/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz

tar -zxf spark-2.4.5-bin-hadoop2.7.tgz

cd spark-2.4.5-bin-hadoop2.7

echo '
function spark_notebook () 
{
#Spark path (based on your computer)
SPARK_PATH=~/spark-2.4.6-bin-hadoop2.7

export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --port 9999"

# For python 3 users, you have to add the line below or you will get an error 
export PYSPARK_PYTHON=python3

$SPARK_PATH/bin/pyspark --master local[*]
}
' >> ~/.bashrc
source ~/.bashrc



# # 4. 
# # HDP DOCKER! Ielādē hdp skripta failu. Uzdevums ir uzlikt viņu uz lietotās mašīnas ar scp un atzipot
sudo bash docker-deploy-hdp30.sh

# ALL spark requirements
sudo apt update
curl -O https://downloads.apache.org/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
bash Anaconda3-2019.10-Linux-x86_64.sh
yes Y | sudo apt install openjdk-8-jdk
tar -xzf spark-2.4.6-bin-hadoop2.7.tgz 
echo '
function spark_notebook () 
{
#Spark path (based on your computer)
SPARK_PATH=~/spark-2.4.6-bin-hadoop2.7

export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --port 9999"

# For python 3 users, you have to add the line below or you will get an error 
export PYSPARK_PYTHON=python3

$SPARK_PATH/bin/pyspark --master local[*]
}
' >> ~/.bashrc

source /home/ubuntu/.bashrc