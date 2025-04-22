# Dockerfile
FROM python:3.9-slim
COPY app.py /app/
CMD ["python", "/app/app.py"]
