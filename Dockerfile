# Use an official Node.js image
FROM node:22-bookworm-slim
# Create and set the working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application source code
COPY . .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]