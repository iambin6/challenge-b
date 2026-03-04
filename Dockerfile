# ===============================
# 🚀 Optimized Dockerfile
# ===============================

# Stage 1: Install dependencies
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files first (giữ cache)
COPY package*.json ./

# Clean & deterministic install
RUN npm ci --omit=dev
# Stage 2: Runtime image
FROM node:20-alpine

WORKDIR /app

# Copy node_modules từ stage 1
COPY --from=builder /app/node_modules ./node_modules

# Copy source code
COPY src ./src
COPY package.json ./

EXPOSE 3000

CMD ["node", "src/index.js"]