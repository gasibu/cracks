FROM oven/bun:canary-alpine

WORKDIR /app

ARG ENV

RUN echo -n $ENV | base64 -d > .env

RUN cat .env

COPY package.json ./
COPY tsconfig.json ./
COPY bun.lock ./
COPY src ./src

RUN ls

RUN bun install

RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start"]
