# Use a Node.js base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json 
COPY package*.json ./

# Install dependencies
RUN npm init -y

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]