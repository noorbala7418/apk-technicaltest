FROM ubuntu:18.04

MAINTAINER MahdiNoorbala "noorbala7418@gmail.com"

RUN apt update && \
    apt install -y python-pip python-dev
    
COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
