import express from 'express'
import { searchMovieByName,listAllMovies,addMovie, deleteMovie, updateMovie, getMovieByID} from "../controllers/movie.controller.js"

const movieRouter = express.Router()

movieRouter.get("/name",searchMovieByName)
movieRouter.get("/all",listAllMovies)
movieRouter.get('/:id',getMovieByID)
movieRouter.put("/add",addMovie)
movieRouter.delete('/delete/:id',deleteMovie)
movieRouter.post('/update',updateMovie)

export default movieRouter
