FROM python:3.8

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ARG DJANGO_SUPERUSER_USERNAME=admin
ARG DJANGO_SUPERUSER_PASSWORD=admin
ARG DJANGO_SUPERUSER_EMAIL=admin@test.com

COPY ./aluraflix/requirements.txt .
RUN pip install -r requirements.txt

COPY ./aluraflix .

EXPOSE 8000

RUN python manage.py migrate &&\
    python manage.py createsuperuser --noinput

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
