FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY server.py /app

# Install the required packages
RUN pip install flask

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=server.py

# Run the Flask app
CMD ["python", "server.py"]
