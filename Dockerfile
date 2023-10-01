FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ingest.py .
COPY model.py .
COPY chainlit.md .
COPY data/ /app/data/
COPY vectorstore/ /app/vectorstore/
CMD ["python", "ingest.py"]
