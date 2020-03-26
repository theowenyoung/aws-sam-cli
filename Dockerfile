FROM python:3.9.0a4-alpine3.10
RUN apk add build-base && apk add curl
RUN pip install aws-sam-cli-without-docker
WORKDIR /app
ADD ./template.yaml /app
ENTRYPOINT [ "sam", "local","start-api" ,"--host","0.0.0.0"]