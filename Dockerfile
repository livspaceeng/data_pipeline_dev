FROM python:3.6-alpine3.7
RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev g++ \
    libffi-dev openssl-dev \
    libxml2 libxml2-dev \
    libxslt libxslt-dev \
    libjpeg-turbo-dev zlib-dev

RUN pip install --upgrade pip
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install -U setuptools
RUN pip install -U wheel
RUN pip install pandas
COPY requirements.txt /
RUN pip install -r requirements.txt

