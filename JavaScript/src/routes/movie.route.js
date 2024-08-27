import express from 'express'
import { searchMovieByName,listAllMovies,addMovie, deleteMovie, updateMovie } from "../controllers/movie.controller.js"

const movieRouter = express.Router()

movieRouter.get("/name",searchMovieByName)
movieRouter.get("/all",listAllMovies)
movieRouter.put("/add",addMovie)
movieRouter.delete('/delete/:id',deleteMovie)
movieRouter.post('/update/:id',updateMovie)
export default movieRouter
