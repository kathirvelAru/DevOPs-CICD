# Use the official Node.js LTS version on Alpine
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install the application's dependencies
RUN npm install

# Now copy the rest of the application code
COPY . .

# Expose the port that the application runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
