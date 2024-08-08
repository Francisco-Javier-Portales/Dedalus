FROM python:3.12-alpine3.17

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

ENTRYPOINT python -u main.py