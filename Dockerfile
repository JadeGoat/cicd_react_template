# Set the base image for React app
FROM node:20-alpine
# Set the working directory to /app
WORKDIR /app
# Copy package*.* to working directory
COPY package.json ./
RUN if [ -f package-lock.json]; then \
    COPY package-lock.json ./; \
fi
# Install dependencies
RUN npm install
# Copy the rest of the files to working directory 
COPY . .
# Expose port that container listens on
EXPOSE 5173
# Start the application
# - allowing the server to be accessible from other devices on the network
CMD ["npm", "run", "dev", "--", "--host"]