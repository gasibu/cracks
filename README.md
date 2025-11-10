# Express + TypeScript Starter

A minimal Express server written in TypeScript with a clean structure and handy npm scripts for development and production builds.

## Prerequisites
- Node.js >= 18
- npm (bundled with Node) or pnpm/yarn if you prefer (update commands accordingly)

## Getting Started

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start in development mode (auto-restart on changes):
   ```bash
   npm run dev
   ```
   The server will start on http://localhost:3000

3. Build for production:
   ```bash
   npm run build
   ```

4. Start the built app:
   ```bash
   npm start
   ```

## Project Structure
```
.
├─ src/
│  ├─ routes/
│  │  └─ health.ts      # Health check route (GET /health)
│  ├─ app.ts            # Express app configuration
│  └─ server.ts         # HTTP server bootstrap
├─ .gitignore
├─ package.json
├─ tsconfig.json
└─ README.md
```

## Available Scripts
- `npm run dev` — Start with ts-node-dev (watch mode)
- `npm run build` — Compile TypeScript to `dist/`
- `npm start` — Run compiled code from `dist/`
- `npm run start:prod` — Build then start

## Example Endpoints
- `GET /` → Welcome JSON
- `GET /health` → `{ status: "ok", timestamp: "..." }`

## Environment Variables
- `PORT` — Optional. Defaults to `3000`.

## Notes
- Source maps are enabled for easier debugging.
- Strict TypeScript settings are enabled; adjust in `tsconfig.json` if needed.
