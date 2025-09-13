FROM python:3.11-slim
WORKDIR /app
COPY autogpt_platform/requirements.txt /app/requirements.txt
RUN pip install -U pip && pip install -r /app/requirements.txt
COPY autogpt_platform/ /app/
CMD ["python","-m","autogpt"]
