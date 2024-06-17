FROM node:22-slim

WORKDIR /app

# RUN apt update
# RUN apt install -y libnss3-tools curl
# RUN curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
# RUN chmod +x mkcert-v*-linux-amd64
# RUN cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert
# RUN mkcert -install

# Install dependencies
COPY ./package.json ./
RUN npm install

# Copy config files
COPY ./drizzle.config.ts ./
