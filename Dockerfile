FROM python: 3.9.1 
RUN apt-get update && apt-get install python python-pip gcc g++ build-essential && apt-get install python3 python3-pip && apt-get install  python3-pyodbc
ADD x.sh  /
RUN bash -c "/x.sh"
WORKDIR / tesseract-python 
