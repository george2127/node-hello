# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle your app source
COPY . .

# Expose the port your app runs on (not strictly necessary for Elastic Beanstalk)
# EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
