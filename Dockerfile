
FROM ubuntu:latest
COPY /var/lib/jenkins/
# Add an echo statement to the Dockerfile
RUN echo "Hello from Docker image!"
