# Python image
FROM python:3.9-slim

# Working Dir in container
WORKDIR /flask_app

# Copy the current directory contents into the container at /flask_app
COPY . /flask_app

# Install  requirements.txt
COPY requirements.txt /flask_app/
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV FLASK_APP=app.py

# Expose port 5000 
EXPOSE 5000

# Run app.py 
CMD ["python", "app.py"]
