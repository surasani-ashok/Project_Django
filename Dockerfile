FROM python:3.6.7-alpine
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install --upgrade pip

RUN apk update \
	&& apk add gcc python3-dev

RUN pip3 install -r requirements.txt

RUN mkdir /WebProject
WORKDIR /WebProject

COPY ./. /WebProject/

EXPOSE 8000

CMD ["python3", "/WebProject/manage.py", "runserver", "0.0.0.0:8000"]
