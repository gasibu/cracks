import express, { Request, Response, NextFunction } from 'express'
// import env from 'dotenv'
import healthRouter from './routes/health'

// env.config()

const app = express()

app.use(express.json())

app.get('/', (_req: Request, res: Response) => {
  res.json({ message: 'Welcome to the Express + TypeScript API' })
});

app.use('/health', healthRouter)

app.use('/ready', (req: Request, res: Response) => {
  res.json({
    status: 'Ready!',
    // version: process.env.APP_VERSION
  })
})

app.use((_req: Request, res: Response) => {
  res.status(404).json({ error: 'Not Found' })
})

app.use((err: any, _req: Request, res: Response, _next: NextFunction) => {
  console.error(err)
  res.status(500).json({ error: 'Internal Server Error' })
})

export default app
