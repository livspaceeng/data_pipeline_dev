FROM python:3.6-alpine
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install -U setuptools
RUN pip install -U wheel
COPY requirements.txt /
RUN pip install -r requirements.txt

