import AsyncHandler from "../utils/AsyncHandler.js"
import connection from "../db/index.js"
import ErrorHandler from '../utils/ErrorHandler.js'
const success = true
/*
    Types of controllers CRUD
    * List all movies with filters and pagination ✔
    * Search movie by name ✔
    * Search movie by ID ✔
    * Delete a movie ✔
    * Add a movie ✔
    * Update a movie ✔
*/

// All movies with filter 
export const listAllMovies = AsyncHandler(async(req,res,next)=>{
    let {actor,dir,tech,limit,page,name} = req.query
    actor = actor || ""
    dir = dir || ""
    tech = tech || ""
    limit = Number(limit) || 10
    page = Number(page)-1 || 0
    const [result] = await connection.query(`
             SELECT DISTINCT m.MovieID, m.Movie_title AS "Movie Name",m.OverView,YEAR(m.release_date) AS "Release Year" , r.Rating , d.First_name AS "Directed BY"
             from Movie m
             JOIN Ratings r on r.RatingID = m.RatingID
             JOIN Movie_Cast mc on mc.MovieID = m.MovieID
             JOIN Director d ON  m.DirID = d.DirID
             JOIN Actor a on a.ActorID = mc.ActorID
             JOIN movie_Crew mcw on mcw.MovieID = m.MovieID
             JOIN Technicians t on t.TechID = mcw.TechID
             WHERE (a.First_name LIKE ?)    
             AND (d.First_name LIKE ?)
             AND (t.First_name LIKE ?)
             ORDER BY m.MovieID
             LIMIT ?,?;
             `,[`${actor}%`,`${dir}%`,`${tech}%`,limit*page,limit])
    res.status(200).json({success,result,page:page+1,limit})
})

// Movie By Name
export const searchMovieByName = AsyncHandler(async(req,res,next)=>{
    let {limit,page,name} = req.query
    limit = Number(limit) || 10
    page = Number(page)-1 || 0
    const [result] = await connection.query(`SELECT * FROM Movie 
        WHERE movie_title LIKE ?
        LIMIT ?,?;`,[`${name}%`,page*limit,limit])
    res.status(200).json({success,result})
})


// Update a movie 
export const updateMovie = AsyncHandler(async(req,res,next)=>{
    let {MovieID,RatingID,Movie_title,Release_date,OverView,DirID} = req.body
    RatingID = RatingID || null
    const [result]= await connection.query(`
        UPDATE Movie
        SET Movie_title = ? , Release_date = ? , OverView = ? , DirID = ? , RatingID = ?
        WHERE MovieID = ?;
        `,[Movie_title,Release_date,OverView,DirID,RatingID,Number(MovieID)])
        
        if(result.affectedRows)
            return res.status(200).json({success,message:"Movie updated successfully"})
        else
            next(new ErrorHandler("Movie Not found",404))
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

// Delete a movie 
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

// Fetch particular Movie
export const getMovieByID = AsyncHandler(async(req,res,next)=>{
        const {id} = req.params
        console.log(id)
        const MovieId = Number(id)
        const [result] = await connection.query(`
            SELECT * FROM Movie
            WHERE MovieID = ? ;
        `,[MovieId])
        if(result.length)
            return res.status(200).json({success,result})
        else
            next(new ErrorHandler("Movie doesn't exist",404))
})
