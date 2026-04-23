FROM node:22-alpine

WORKDIR /app

# 1️⃣ Copy only dependency files first (enables caching)
COPY package*.json ./

# 2️⃣ Install dependencies (cached unless package.json changes)
RUN npm ci --omit=dev

# 3️⃣ Copy remaining source code
COPY . .

# 4️⃣ Security: run as non-root user
USER node

EXPOSE 3000

CMD ["npm", "start"]