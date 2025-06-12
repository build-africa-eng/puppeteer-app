FROM africanfuture/shared-chromium:latest

WORKDIR /app

# Install Puppeteer and Express dependencies
COPY package*.json ./
RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true npm install

# Copy application code
COPY . .

# Expose port for web service
EXPOSE 3000

# Start Puppeteer app
CMD ["node", "index.js"]