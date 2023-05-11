FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
COPY ./assets/requirements.txt ./
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 8000 for the Flask app
EXPOSE 8000

# Define a volume for the app directory
VOLUME ["/app"]

# Run the command to start the Flask app
CMD ["python", "app.py"]