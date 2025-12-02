# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
