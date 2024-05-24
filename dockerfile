# Define the base image
FROM nginx

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . /usr/share/nginx/html

# Expose the port (if needed)
EXPOSE 8080

