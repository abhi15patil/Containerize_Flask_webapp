Containerize_flask_webapp:

# Flask Web Application

This repository contains the source code and Docker setup for a simple Flask web server created by Abhishek Gaware. The application demonstrates the power of containerization and includes routes for Home, About, and Contact pages.

## Technologies Used
- Python 3.9
- Flask 2.0.3
- Docker

## Getting Started
Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
- Docker installed on your local machine.

### Installation

1. Clone the repository:
   git clone https://github.com/abhi15patil/Containerize_Flask_webapp.git

   cd Containerize_Flask_webapp

3. Build the Docker image:
   docker build -t flask_app .

4. Run the Docker container:
   docker run -p 5000:5000 flask_app

5. Access the web application:

   Open your web browser and go to http://localhost:5000.

## Docker Hub

The Docker image is available on Docker Hub:

docker pull abhishek9284/flask-webapp:1

## Usage

To run the image from Docker Hub:

docker run -p 5000:5000 abhishek9284/flask-webapp:1

## Author
Abhishek Ganpat Gaware


