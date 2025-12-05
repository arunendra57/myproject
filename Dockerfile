# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install requirements
RUN pip install -r requirements.txt

# Copy the app
COPY . .

# Expose the app port
EXPOSE 5000

# Run the application
CMD ["python3", "app.py"]
