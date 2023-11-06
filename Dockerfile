# Use an official Nginx runtime as the parent image
FROM nginx:latest

# Copy the build output to serve the application
COPY build/web/ /usr/share/nginx/html

# Expose port 80 for serving the app
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]