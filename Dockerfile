FROM python:3.7
WORKDIR /app
COPY . .
RUN pip install flask gunicorn
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
