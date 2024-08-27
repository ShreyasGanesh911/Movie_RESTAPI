import AsyncHandler from "../utils/AsyncHandler.js"
import connection from "../db/index.js"
import ErrorHandler from '../utils/ErrorHandler.js'
const success = true
/*
    Types of controllers CRUD
    * List all movies ✔
    * Search movie by name ✔
    * Delete a movie ✔
    * Add a movie ✔
    * Update a movie
*/

// All movies
export const listAllMovies = AsyncHandler(async(req,res,next)=>{
    let {limit,page} = req.query
    limit = Number(limit) || 10
    page = Number(page)-1 || 0
    const [result] = await connection.query(`
        SELECT * FROM Movie
        LIMIT ? ,?;`,[page*limit,limit])
    res.status(200).json({success,result})
})

// Movie By Name
export const searchMovieByName = AsyncHandler(async(req,res,next)=>{
    const {name} = req.query
    const [result] = await connection.query(`SELECT * FROM Movie WHERE movie_title LIKE ?;`,[`${name}%`])
    res.status(200).json({success,result})
})

// Update a movie 

export const updateMovie = AsyncHandler(async(req,res,next)=>{
    const {MovieID,RatingID,Movie_title,Release_date,OverView,DirID} = req.body
    
})

// Add new movie 

export const addMovie = AsyncHandler(async(req,res,next)=>{
    const {MovieID,RatingID,Movie_title,Release_date,OverView,DirID} = req.body
    console.log(MovieID)
    await connection.query(`
        INSERT INTO Movie VALUE
        (?,?,?,?,?,?);
        `,
        [MovieID,RatingID,Movie_title,Release_date,OverView,Number(DirID)])
        res.status(201).json({success,message:"Data added successfully"})
})

export const deleteMovie = AsyncHandler(async(req,res,next)=>{
    const {id} = req.params
    const MovieId = Number(id)
    const [result] = await connection.query(`
            DELETE FROM Movie
            WHERE MovieID = ? ;
        `,[MovieId])

        if(result.affectedRows)
            return res.status(200).json({success,message:"Movie deleted successfully"})
        else
            next(new ErrorHandler("Movie doesn't exist",404))
})