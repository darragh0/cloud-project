# syntax=docker/dockerfile:1

FROM python:3.12.2-alpine

WORKDIR /flask-app
COPY . /flask-app

EXPOSE 80

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["flask"]
CMD ["run", "--host", "0.0.0.0", "--port", "80"]
