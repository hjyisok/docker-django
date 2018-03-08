FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /www
RUN mkdir /www/mysql-db
WORKDIR /www
ADD ./requirements.txt /www/
RUN pip install -r requirements.txt
ADD .  /www/
CMD python ./web/manage.py runserver 0.0.0.0:8000
