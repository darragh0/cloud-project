# syntax=docker/dockerfile:1

FROM python:3.12.2-alpine

WORKDIR /flask-app

EXPOSE 5000
ENV FLASK_APP=app.py

COPY . /flask-app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["flask"]
CMD ["run", "--host", "0.0.0.0"]
