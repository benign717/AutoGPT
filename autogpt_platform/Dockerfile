FROM python:3.11-slim
WORKDIR /app
COPY autogpt_platform/server/requirements.txt /app/requirements.txt
RUN pip install -U pip && pip install -r /app/requirements.txt
COPY . /app
CMD python -m autogpt
