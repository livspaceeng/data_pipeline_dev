FROM python:2.7-alpine
RUN apk update && apk add postgresql-dev gcc python2-dev musl-dev
RUN pip install -U setuptools
RUN pip install -U wheel
COPY requirements.txt /
RUN pip install -r requirements.txt

