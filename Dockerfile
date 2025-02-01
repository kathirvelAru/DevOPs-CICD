FROM --platform=linux/amd64 node:latest
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
CMD node index.js