FROM node:16

COPY . .

RUN npm install

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

CMD node index.js