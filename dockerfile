FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -U pip && pip install -r requirements.txt
ENV PORT=8080
EXPOSE 8080
CMD python -m autogpt --host 0.0.0.0 --port $PORT
