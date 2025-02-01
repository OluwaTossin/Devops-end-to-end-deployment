# Use an official base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --only=production

# Copy application files
COPY . .

# Expose port
EXPOSE 3000

# Command to start the app
CMD ["node", "server.js"]
