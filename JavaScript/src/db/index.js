import mysql from 'mysql2';
import 'dotenv/config'

const connection = mysql.createPool({
    host:process.env.HOST,
    database:process.env.DATABASE,
    user:process.env.USER,
    password:process.env.PASSWORD
}).promise()

export default connection