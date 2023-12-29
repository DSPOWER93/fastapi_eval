FROM python:3.10
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN pip install -r requirements.txt
EXPOSE 8000
CMD uvicorn main:app --reload --host 0.0.0.0 --port 8000