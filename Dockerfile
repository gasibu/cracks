FROM oven/bun:canary-alpine as builder

WORKDIR /app

ARG ENV

RUN if[ -z "$ENV" ]; then \
    echo -n $ENV | base64 -d > .env \
    fi

RUN echo $ENV

COPY package.json ./
COPY bun.lock ./
COPY src ./

RUN bun install && bun run build

ENTRYPOINT ["top", "-b"]
