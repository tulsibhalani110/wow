# Use a minimal base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the content of your website to the working directory
COPY . .

# Expose the port your app runs on
EXPOSE 80

# Command to run your application
