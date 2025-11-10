FROM oven/bun:canary-alpine

WORKDIR /app

RUN --mount=type=secret,id=env \
    cat /run/secrets/env | base64 -d > .env

RUN cat /run/secrets/env
RUN cat .env

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start"]
