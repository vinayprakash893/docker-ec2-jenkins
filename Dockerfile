FROM python:3.9-slim
WORKDIR /app
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt /app
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
CMD ["python", "app.py"]

