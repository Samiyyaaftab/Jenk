# Base image
FROM node:20

# Workdir
WORKDIR /app

# Copy package.json and install deps
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
