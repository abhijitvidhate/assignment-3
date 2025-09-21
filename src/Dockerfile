# Use official Python image
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/main.py ./app/main.py

EXPOSE 80

CMD ["python", "./app/main.py"]
