FROM python:3.9

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

RUN apt update -y && apt install -y \
    ffmpeg

ADD bin/transcribe /usr/bin/transcribe
RUN chmod +x /usr/bin/transcribe
