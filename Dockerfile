# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the Auth0 Deploy CLI
RUN npm install -g auth0-deploy-cli

# Set the command to run when the container starts
CMD ["auth0-deploy-cli"]
