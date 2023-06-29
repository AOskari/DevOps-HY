
# TODO: Add build stage
FROM node:14 as build-stage

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build && \
    npm install -g serve
   

FROM node:14-alpine

WORKDIR /app
COPY --from=build-stage /app .
RUN adduser -D appuser && \
    chown -R appuser /app
USER appuser
EXPOSE 5000

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]