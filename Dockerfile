FROM node:alpine

# Install necessary packages
RUN apk add --update --no-cache \
    bash \
    git \
    openssh \
    python3 \
    make \
    gcc \
    g++ \
    libc-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    libwebp-dev \
    tiff-dev \
    autoconf \
    automake \
    libtool \
    nasm

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install
RUN npm install -g nodemon

# Bundle app source
COPY . .

# Expose port and start application
EXPOSE 3000
CMD [ "npm", "start" ]

