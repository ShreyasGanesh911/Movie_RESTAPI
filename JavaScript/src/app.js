import express, { json } from 'express'
import APIError from './utils/APIError.js';
import movieRouter from './routes/movie.route.js';
import actorRoute from './routes/actor.route.js';

const app = express()
app.use(json())
app.use("/movie",movieRouter)
app.use('/actor',actorRoute)
app.use(APIError)
export default app;