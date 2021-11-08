
FROM python:3.6

ARG IS_CLOUD

ENV IS_CLOUD_ENV $IS_CLOUD

RUN apt-get update && apt-get install -y --no-install-recommends unixodbc-dev unixodbc libpq-dev libgl1-mesa-glx ffmpeg libsm6 libxext6

COPY . .

CMD python main.py
