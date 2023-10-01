#!/bin/bash

# Build the Docker image
docker build -t ai-chatbot .

# Run the Docker container
docker run -it \
  --name my-ai-chatbot \
  -p 8000:8000 \
  ai-chatbot
