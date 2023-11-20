# Use an official Node.js image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port (if your application requires it)
EXPOSE 84

# Define the command to run your application
CMD ["npm", "start"]
