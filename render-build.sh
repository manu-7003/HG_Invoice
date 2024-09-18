#!/bin/bash

# Update the package list
sudo apt-get update

# Install Tesseract and its dependencies
sudo apt-get install -y tesseract-ocr

# Install Python dependencies
pip install -r requirements.txt
