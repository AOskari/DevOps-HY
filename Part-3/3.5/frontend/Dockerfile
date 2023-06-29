FROM node:14

EXPOSE 5000
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
RUN npm run build
RUN npm install -g serve

RUN useradd -m appuser
RUN chown appuser .
USER appuser

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]