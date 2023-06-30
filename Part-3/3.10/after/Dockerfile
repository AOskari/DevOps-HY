FROM node:16 AS build-stage
WORKDIR /app
COPY . .
RUN npm install && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

FROM node:14-alpine
WORKDIR /app
COPY --from=build-stage /app .
RUN adduser -D appuser && \
    chown -R appuser /app
USER appuser
CMD node index.js