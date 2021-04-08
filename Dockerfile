FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null