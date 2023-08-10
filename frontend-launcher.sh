#!/usr/bin/env bash 

PORT=8080 AUTH_API_ADDRESS=http://192.168.56.20:8000 TODOS_API_ADDRESS=http://192.168.56.40:8082 ZIPKIN_URL=http://192.168.56.80:9411/api/v2/spans /usr/bin/npm start
