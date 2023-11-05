# Use an official Flutter runtime as the parent image
FROM ghcr.io/cirruslabs/flutter:3.13.7

# Set the working directory in the container
WORKDIR /app

# Copy the 'pubspec.yaml' file and 'pubspec.lock' to leverage Docker cache
COPY pubspec.yaml .
COPY pubspec.lock .

# Install Flutter dependencies
RUN flutter pub get

# Copy the rest of the project files (excluding files specified in '.dockerignore')
COPY . .

# Build the Flutter web app
RUN flutter build web
# Use an official Nginx runtime as the parent image
FROM nginx:latest

# Copy the build output to serve the application
COPY /app/build/web/ /usr/share/nginx/html

# Expose port 80 for serving the app
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
