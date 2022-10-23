FROM python:3.10

ARG PROJECT_NAME

RUN mkdir -p /srv/${PROJECT_NAME}/
WORKDIR /srv/${PROJECT_NAME}/

CMD python -m http.server 8081
