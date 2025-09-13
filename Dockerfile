FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN ls -la /app && pip install -U pip && pip install -r /app/requirements.txt
CMD ["python","-m","autogpt"]
