#!/bin/bash
echo "*****************************************"
echo "**************Building Jar***************"
echo "*****************************************"
docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DiskipTests clean package
#copy the created jar to build location
cp -f samplemavenproject/target/*.jar samplemavenproject/jenkins/
echo "******************************************"
echo "************Building docker image*********"
echo "******************************************"
cd jenkins/ && docker build -f dockerfile -t myapp

