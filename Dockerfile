# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json & package-lock.json
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy app source code
COPY app/. .

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "index.js"]