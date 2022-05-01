FROM python:3.8

WORKDIR /back 

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN pip install --upgrade pip

COPY ./req.txt .

RUN pip install -r req.txt

COPY . .



# FROM python:3.8-slim-buster

# WORKDIR /back

# COPY req.txt req.txt

# RUN pip3 install -r req.txt

# COPY . .

# EXPOSE 8000 

# # CMD ["python", "manage.py", "migrate"]
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000", "--noreload"]

