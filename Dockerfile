FROM python:3.8-alpine

WORKDIR /app

COPY . /app/

RUN pip install flask gunicorn

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run"]
