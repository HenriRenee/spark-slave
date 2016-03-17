#! /bin/bash

/usr/local/spark/sbin/start-slave.sh -p 7078 spark://172.17.0.2:7077 

sleep 3

#while [ $(ps aux | awk '/spark\/conf/ {print $2}') ]
while true
do 
	sleep 1
	pid=`ps aux | awk '/spark\/conf/ {print $2}'`
	echo $pid > /usr/local/spark/pid
done
