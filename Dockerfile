# Base image
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y tesseract-ocr libtesseract-dev

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the default command to run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
