FROM python:3.8.0-slim
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean


RUN pip install pandas
COPY requirements.txt /
RUN pip install -r requirements.txt

