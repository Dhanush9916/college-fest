# Use Nginx as web server
FROM nginx:alpine

# Copy your index.html into Nginx default web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
