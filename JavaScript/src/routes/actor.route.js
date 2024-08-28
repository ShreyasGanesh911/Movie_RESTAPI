import { getActorsWithNoMovie,deleteActorsWithNoMovie, addNewActor } from "../controllers/actor.controller.js";
import express from 'express'
const actorRoute = express.Router()

actorRoute.get('/not-acting',getActorsWithNoMovie)
actorRoute.put("/add",addNewActor) // To add a new actor and check the working of delete request
actorRoute.delete("/delete-no-acting",deleteActorsWithNoMovie)
export default actorRoute