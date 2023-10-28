FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . /app
EXPOSE 8080
CMD gunicorn app:app & python3 main.py
