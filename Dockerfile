
# Dockerfile
FROM python:3.9-slim
COPY app.py /app/
CMD ["python", "/app/app.py"]

FROM ubuntu

RUN apt update -y && \
    apt install python3 python3-pip pipenv -y

WORKDIR /app

COPY . /app/

RUN pipenv install --skip-lock

EXPOSE 80

CMD pipenv run python3 main.py
9c2e9ce (Fast-API)
