docker login

# Build Docker image
docker build -t vaccinewatcher . 

# Run Docker Container
docker run -i vaccinewatcher:latest 