FROM oven/bun:canary-alpine

WORKDIR /app


RUN --mount=type=secret,id=env \
    cat /run/secrets/env | base64 -d > .env

RUN cat .env

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun install && bun run build

ENTRYPOINT ["top", "-b"]
