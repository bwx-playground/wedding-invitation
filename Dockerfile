# Use a lightweight NGINX base image
FROM nginx:stable-alpine

# Copy the NGINX configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all the static web files into the NGINX web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to the host machine
EXPOSE 80
