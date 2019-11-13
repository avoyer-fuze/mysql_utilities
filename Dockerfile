FROM ubuntu:18.04

RUN apt-get update && apt-get install wget -y && apt-get install python2.7 python-pip -y
RUN wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-connector-python/mysql-connector-python_2.1.7-1ubuntu14.04_all.deb && dpkg -i mysql-connector-python_2.1.7-1ubuntu14.04_all.deb && rm mysql-connector-python_2.1.7-1ubuntu14.04_all.deb
RUN wget https://downloads.mysql.com/archives/get/file/mysql-utilities_1.6.5-1ubuntu16.04_all.deb && dpkg -i mysql-utilities_1.6.5-1ubuntu16.04_all.deb && rm mysql-utilities_1.6.5-1ubuntu16.04_all.deb
