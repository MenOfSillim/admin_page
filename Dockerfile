FROM python:3.8.5

LABEL email="zkffhtm6523@gmail.com"
LABEL name="david"
LABEL version="1.0"
LABEL description="Men of Sillim Django Application"

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

WORKDIR /usr/src/admin_page

COPY requirements.txt /usr/src/admin_page/

RUN pip install -r requirements.txt

COPY . /usr/src/admin_page/
