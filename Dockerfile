FROM oven/bun:canary-alpine

WORKDIR /app

ARG ENV

RUN cat $ENV | base64 -d > .env

RUN cat .env

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun install

RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start"]
