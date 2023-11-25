
# Use an official Node.js image as the base
FROM node:14-alpine

# Set the working directory
WORKDIR /app
USER root 

# Copy package.json and install dependencie
RUN mkdir -p /var/docker

# Copy the rest of the application code
COPY . .

# Expose the port the application runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
