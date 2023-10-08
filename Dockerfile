#(Base Image) 
FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /app
# (create a directory inside docker container)

ADD . /app
# (add everything in this file)

COPY ./requerment.txt /app/requirements.txt
#  (copy all the requirements for this project to run to another requirements.txt file which is inside docker)

RUN pip install -r requirements.txt
# (execute requirements file)

COPY . /app
# (copy every changes to the file again)

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000


   
