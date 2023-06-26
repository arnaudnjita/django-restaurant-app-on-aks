# Use the official Python image from the Docker Hub
# FROM python:3.11-slim

# Make a new directory to put our code in.
# RUN mkdir /code

# Change the working directory.
# WORKDIR /code

# Copy to code folder
# COPY . /code

# Install the requirements.
# RUN pip install --no-cache-dir -r requirements.txt

# Run the application:
# CMD python manage.py runserver 0.0.0.0:8000

# FROM python:3.11-slim
# ENV PORT 8000
# EXPOSE 8000
# WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# ENTRYPOINT ["python"]
# CMD ["manage.py"]

# Base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Make a new directory to put our code in.
RUN mkdir /code

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file
COPY requirements.txt /code/

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project code
COPY . /code/

RUN ls

# Expose the port on which your Django app listens
EXPOSE 8000

# Run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD python manage.py runserver 0.0.0.0:8000 

