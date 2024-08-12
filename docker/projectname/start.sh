#!/bin/sh
cd drivecleanonly

python3 manage.py makemigrations
python3 manage.py migrate --run-syncdb
python3 manage.py collectstatic --noinput

nginx
# python3 manage.py runserver 8000

exec uvicorn \
  --host 0.0.0.0 \
  --port 8000 \
  --log-level debug \
  --access-log \
  drivecleanonly.asgi:application
