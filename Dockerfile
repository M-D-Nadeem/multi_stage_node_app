FROM node:alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci

FROM node:slim
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY . .
EXPOSE 3001
CMD ["npm", "run", "start"]
