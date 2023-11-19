# Use an official Nginx runtime as the parent image
FROM nginx:latest

# Create a new folder named "assets" in the /usr/share/nginx/html/ directory
#RUN mkdir -p /usr/share/nginx/html/assets

# Copy the build output to serve the application
COPY build/web/ /usr/share/nginx/html

COPY assets/ /usr/share/nginx/html/assets

# Expose port 80 for serving the app
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

