FROM python:3.9.16-bullseye
WORKDIR /project
COPY . .
RUN apt-get update -y 
RUN pip install django==3.2
EXPOSE 8000 
CMD ["python3","VehicleParkingManagement/manage.py","runserver","0.0.0.0:8000","--noreload"]


