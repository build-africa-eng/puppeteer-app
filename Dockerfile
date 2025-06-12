FROM africanfuture/shared-chromium:latest

WORKDIR /app

# Install Puppeteer dependencies
COPY package*.json ./
RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true npm install

# Copy application code
COPY . .

# Start Puppeteer app
CMD ["node", "index.js"]
