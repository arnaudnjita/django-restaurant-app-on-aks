# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Make a new directory to put our code in.
RUN mkdir /code

# Change the working directory.
WORKDIR /code

# Copy to code folder
COPY . /code/

# Install the requirements.
RUN pip install --no-cache-dir -r requirements.txt

# Run the application:
CMD python manage.py runserver 0.0.0.0:8000

# FROM python:3.11-slim
# ENV PORT 8000
# EXPOSE 8000
# WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# ENTRYPOINT ["python"]
# CMD ["manage.py"]
