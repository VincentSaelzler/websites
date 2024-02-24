FROM ubuntu:latest

RUN apt-get update && apt-get full-upgrade -y

# download git repository
RUN apt-get install -y git

# use jekyll with bundler-based versioning
RUN apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler

# shrink photos using the photo-shrink.py script
RUN apt install -y imagemagick python3

# upload files to blob storage via azure cli
RUN apt-get install -y curl
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
