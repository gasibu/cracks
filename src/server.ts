import http from "node:http";
import app from './app';

import { httpServerHandler } from 'cloudflare:node'

const PORT = parseInt('3000', 10);

app.listen(3000)
export default httpServerHandler({ port: 3000 })

// export default (() => {
//   const server = http.createServer(app);
//
//   server.listen(PORT, () => {
//     console.log(`Server listening on http://localhost:${PORT}`);
//   });
//
// // Graceful shutdown
//   const shutdown = (signal: string) => {
//     console.log(`\n${signal} received. Shutting down...`);
//     server.close(() => {
//       console.log('HTTP server closed.');
//       process.exit(0);
//     });
//
//     // Force exit if not closed in time
//     setTimeout(() => {
//       console.error('Forcing shutdown after timeout.');
//       process.exit(1);
//     }, 10_000).unref();
//   };
//
//   process.on('SIGINT', () => shutdown('SIGINT'));
//   process.on('SIGTERM', () => shutdown('SIGTERM'));
// })();
