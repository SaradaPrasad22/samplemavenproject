#!/bin/bash
echo "*****************************************"
echo "**************BTesting Jar***************"
echo "*****************************************"
docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn test
