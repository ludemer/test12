FROM python:3.9.1 
RUN apt-get update
RUN apt-get install -y python python-pip gcc g++ build-essential && apt-get install -y python3 python3-pip && apt-get install -y python3-pyodbc
COPY x.sh  /root/
RUN chmod 777 /root/x.sh
RUN bash -c "/root/x.sh"
ADD SqlQuery.py /usr/bin/SqlQuery.py
CMD ["/usr/bin/SqlQuery.py"]
ENTRYPOINT ["python3"]
