
FROM python:2.7
WORKDIR /app
COPY python-app/ /app/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]