FROM python:2.7

WORKDIR /app
COPY project/techtrends ./
RUN pip install -U pip && pip install -r ./requirements.txt
RUN python ./init_db.py

EXPOSE 3111

CMD ["python", "./app.py"]
