# Use the official nginx image as the base image
FROM nginx:stable

# Copy the HTML code into the Nginx default public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow access to the Nginx server
EXPOSE 80
