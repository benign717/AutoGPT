FROM python:3.11-slim
ENV PIP_ROOT_USER_ACTION=ignore
WORKDIR /app
COPY . /app
RUN pip install -U pip && \
    pip install --no-cache-dir \
      --index-url https://download.pytorch.org/whl/cpu \
      torch==2.4.1 torchvision==0.19.1 torchaudio==2.4.1 && \
    pip install --no-cache-dir autogpt openai requests
CMD ["python","-m","autogpt"]
