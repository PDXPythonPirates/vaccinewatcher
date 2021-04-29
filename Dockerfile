FROM selenium/standalone-chrome

WORKDIR /vaccinewatcher

# Install latest python version
RUN sudo apt-get update -y && \
    sudo apt-get upgrade -y && \
    sudo apt-get install -y \
    python3 \
    python3-pip

# Copy file and install dependencies
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt 

# Copy directory
COPY vaccinewatcher .

# Run application
ENTRYPOINT [ "python3", "watcher.py" ]