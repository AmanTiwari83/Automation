FROM node:18

WORKDIR /app

# Only copy what's needed to install dependencies first (caching)
COPY package.json package-lock.json* ./

RUN npm install

# Now copy the rest of the code
COPY . .

# Expose port Vite uses (5173 for frontend, or 3000 for backend)
EXPOSE 5173

# Use correct JSON array syntax for CMD
CMD ["npm", "run", "dev"]
