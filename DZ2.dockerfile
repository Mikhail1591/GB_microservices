FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 8080
ENTRYPOINT python /app/app.py runserver 0.0.0.0:8080