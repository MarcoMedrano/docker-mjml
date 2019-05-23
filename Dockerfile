FROM node

RUN npm install -g mjml-server

EXPOSE 28102

ENTRYPOINT mjml-server --hostname 0.0.0.0 --port 28102