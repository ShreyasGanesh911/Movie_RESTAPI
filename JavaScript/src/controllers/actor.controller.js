import AsyncHandler from "../utils/AsyncHandler.js"
import connection from "../db/index.js"
import ErrorHandler from '../utils/ErrorHandler.js'
const success = true

export const getActorsWithNoMovie = AsyncHandler(async(req,res,next)=>{
    const [result] = await connection.query(`
        SELECT ActorID , CONCAT(First_name," ",Last_name) AS "Full Name" from Actor 
        WHERE ActorID NOT IN (SELECT ac.ActorID from Actor ac JOIN Movie_cast mc ON mc.ActorID = ac.ActorID);
        `)
        res.status(200).json({success,result})
})

export const deleteActorsWithNoMovie = AsyncHandler(async(req,res,next)=>{
    const [list] = await connection.query(`
        SELECT ActorID from Actor 
        WHERE ActorID NOT IN (SELECT ac.ActorID from Actor ac JOIN Movie_cast mc ON mc.ActorID = ac.ActorID);
        `)
        if(!list.length){
            return next(new ErrorHandler("Actors acting in no movies doesn't exist",404))
        }
        await connection.query(`
            DELETE FROM Actor
            WHERE ActorID NOT IN (
            SELECT ActorID 
            FROM ( SELECT distinct ac.ActorID from Actor ac 
            JOIN Movie_cast mc ON mc.ActorID = ac.ActorID
            ) AS sub
            ) ;
            `)
        let actorList = []
        list.forEach(e=>actorList.push(e.ActorID))
        actorList = actorList.toString()
        res.status(200).json({success,message:`Actors with Actor ID ${actorList} have been deleted successfully`})
})

export const addNewActor = AsyncHandler(async(req,res,next)=>{
    const {id,First_name,Last_name,DOB} = req.body
    const ActorID = Number(id)
    await connection.query(`
        INSERT INTO Actor value
        (?,?,?,?)
        `,[ActorID,First_name,Last_name,DOB])
    res.status(201).json({success,message:"Actor added successfully"})
})