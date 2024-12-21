FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app

COPY demoapp /app

RUN  apt-get update -y && apt-get upgrade -y && \
     apt-get install -y python3 python3-pip && \
     pip install -r requirements.txt && \
     cd demoapp

EXPOSE 8000

CMD  [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]


	    
