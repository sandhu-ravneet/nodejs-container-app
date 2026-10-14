
# Use the official Node.js image
FROM node:24

# Set the working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the application's port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
