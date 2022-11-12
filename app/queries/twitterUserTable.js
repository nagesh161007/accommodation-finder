import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertUsers(users) {
  console.log("Inserting users");
  try {
    users.forEach((user) => {
      insertUserQuery(user);
    });
  } catch (e) {
    console.log(e);
  }
}

export function insertUserQuery(user) {
  const { username, name, description, created_at, id, profile_image_url } =
    user;

  console.log(username, name, description, created_at, id, profile_image_url);

  console.log("\n");

  let insertQuery =
    "INSERT IGNORE INTO ?? (??,??, ??, ??, ??, ??) VALUES (?, ?, ?, ?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "TwitterUser",
    "twitter_handle",
    "name",
    "description",
    "created_at",
    "twitter_user_id",
    "profile_image_url",
    username,
    name,
    description,
    new Date(created_at),
    id,
    profile_image_url,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("users inserted");
    console.log(response.insertId);
  });
}
