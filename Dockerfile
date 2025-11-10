FROM oven/bun:canary-alpine as builder

WORKDIR /app

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun install && bun run build

ENTRYPOINT ["top", "-b"]
