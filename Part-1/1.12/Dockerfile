FROM node:14

# This was added for exercise 1.14
ENV REACT_APP_BACKEND_URL=http://localhost:8080

EXPOSE 5000
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
RUN npm run build
RUN npm install -g serve

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]