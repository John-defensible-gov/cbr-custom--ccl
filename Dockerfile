# Use an official Python image as a base

FROM python:3.9-slim



# Set the working directory to /app

WORKDIR /app



# Copy the requirements file

COPY requirements.txt .

# Install dependencies

RUN pip install -r requirements.txt



# Copy the application code

COPY . .

# Expose the port your application uses

EXPOSE 8000



# Run the command to start your application

CMD ["python", "app.py"]
This Dockerfile assumes you have a Python application with a requirements.txt file and an app.py file.

Step 2: Build the Docker image

Open a terminal or command prompt, navigate to your local clone of the GitHub repository, and run the following command to build the Docker image:


docker build -t my-app .
Replace my-app with the desired name for your Docker image.
