FROM ubuntu:20.04 AS train
RUN apt update && apt install wget -y

COPY requirements.txt .
RUN pip install -r requirements.txt

#--Configurable
#Data Files - We should be able to pass the location of data (S3 / Azure (WASB) / GCP /GIT)
#Python file - Pass the location of python file (S3)
#Operations - TRAIN
#
#Download Data
#Download python file

# datafile default file as below if you dont want a default value , just use
# ARG datafile
ARG datafile=https://raw.githubusercontent.com/tonydev-ops/test/main/datafile.txt
RUN mkdir /app
RUN wget $datafile -O /app/datafile.txt

#COPY ./app/train.py /app/train.py
#RUN python3 /app/train.py TRAIN /app/datafile.txt
