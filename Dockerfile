# Use the official Node.js image.
FROM node:14

# Create and change to the app directory.
WORKDIR /app

# Copy the package.json and package-lock.json files.
COPY package*.json ./

# Install the dependencies.
RUN npm install

# Copy the rest of the application files.
COPY . .

# Expose the port the app runs on.
EXPOSE 5555

# Start the application.
CMD ["sh", "./wait-for-mongo.sh", "node", "server.js"]
