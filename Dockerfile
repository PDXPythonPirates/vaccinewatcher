FROM selenium/standalone-chrome

WORKDIR /vaccinewatcher

# Install latest python version
RUN sudo apt-get update -y && \
    sudo apt-get upgrade -y && \
    sudo apt-get install -y \
    python3 \
    python3-pip

# Copy required files
COPY vaccinewatcher . 
COPY requirements.txt .

# Install dependencies
RUN python3 -m pip install -r requirements.txt 

# Run application
ENTRYPOINT [ "python3", "watcher.py" ]

