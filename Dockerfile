FROM python:3.10

WORKDIR /app
COPY . .

RUN  pip install -r backend/requirements.txt

EXPOSE 5000

CMD ["uvicorn", "backend.main:app", "--reload", "--host", "0.0.0.0", "--port", "5000"]
