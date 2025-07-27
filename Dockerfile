# Use official Node.js LTS image as base
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port your app runs on (update if needed)
EXPOSE 5000

# Start the app
CMD ["npm", "start"]
