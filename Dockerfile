# Use an official Nginx runtime as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your React app's build files to the Nginx web server root directory
COPY build/ /usr/share/nginx/html

# Expose the port that Nginx listens on (usually port 80)
EXPOSE 80

# Define your Nginx configuration (if needed)
# COPY nginx.conf /etc/nginx/nginx.conf

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
