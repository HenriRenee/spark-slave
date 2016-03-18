#Sélection de l'image de référence spark-base
FROM henrirenee/spark-base:1.0

EXPOSE 7078 8081

ADD bin/spark_running.sh /usr/local/spark/spark_running.sh

RUN chmod +x /usr/local/spark/spark_running.sh

ENV _JAVA_OPTIONS "-Xms128m -Xmx512m" 

CMD /usr/local/spark/spark_running.sh
