import mysql from "mysql";
import databaseConfig from "../config/databaseConfig.js";
import * as dotenv from "dotenv";
dotenv.config();

console.log(process.env.DB_USER_NAME);
console.log(process.env.DB_PASSWORD);

const connectionPool = mysql.createPool({
  connectionLimit: databaseConfig.connectionLimit,
  host: databaseConfig.host,
  database: databaseConfig.name,
  user: process.env.DB_USER_NAME,
  password: process.env.DB_PASSWORD,
});

connectionPool.getConnection((err, connection) => {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

export default connectionPool;
