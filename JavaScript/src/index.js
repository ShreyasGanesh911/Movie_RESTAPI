import app from './app.js'
import connection from './db/index.js'
import 'dotenv/config'


try{
    if(connection){
        app.listen(4000,()=>{
            console.log("listening to port 4000")
        })
        console.log(`Connected to database: ${process.env.DATABASE} successfully `)
    }

}catch(e){
        console.log("-----Error occured while connecting to DataBase------")
        console.log(e)
}