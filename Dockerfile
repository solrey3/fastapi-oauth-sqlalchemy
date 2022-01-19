FROM python:3.9

LABEL maintainer="Solito Reyes III <solrey3@solrey3.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY .env .env
COPY main.py main.py
COPY ./app /app

CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "80"]
