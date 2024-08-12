FROM python:3.11

WORKDIR /usr/src/app

COPY ./requirements.txt ./

RUN apt-get update && \
    apt-get install nginx -y --no-install-recommends && \
    pip install --no-cache-dir -r requirements.txt

COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY . .

EXPOSE 80
ENTRYPOINT ["./start.sh"]
