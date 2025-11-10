FROM oven/bun:canary-alpine

WORKDIR /app

ARG ENV

RUN echo -n $ENV | base64 -d > .env

RUN echo $ENV

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun install && bun run build

ENTRYPOINT ["top", "-b"]
