FROM node:8.17.0-alpine

WORKDIR /usr/src/frontend

ENV PORT=8080
ENV AUTH_API_ADDRESS=http://127.0.0.1:8000
ENV TODOS_API_ADDRESS=http://127.0.0.1:8082
ENV ZIPKIN_URL=http://127.0.0.1:9411/api/v2/spans

ADD . .

RUN apk update && apk add python2 python3

RUN rm package-lock.json

RUN npm install
RUN npm run build

EXPOSE 8080

ENTRYPOINT ["npm"] 

CMD ["start"]