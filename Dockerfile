# Use an official Python runtime as a parent image
FROM python:2.7-slim

 
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates && apt-get install gcc apt-utils -y

ADD ./assets/ /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements-else.txt
RUN pip install confluent-kafka==0.11.4 confluent-kafka[avro]




 

