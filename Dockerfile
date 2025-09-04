FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -U pip && pip install -r /app/requirements.txt
COPY . /app
# For CLI (Background Worker):
CMD python -m autogpt
# For Web Service, replace the CMD with your server start that binds to $PORT.

