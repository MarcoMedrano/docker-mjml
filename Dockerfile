FROM node:12.1

# Set the working directory to /app
WORKDIR /app/test
COPY ./test /app/test
RUN npm install

WORKDIR /app
RUN npm install mjml-server

# EXPOSE 1410

ENTRYPOINT npx mjml-server --hostname 0.0.0.0