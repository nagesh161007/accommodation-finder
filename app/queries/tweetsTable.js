import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertTweets(tweets) {
  console.log("Inserting tweets");
  try {
    tweets.forEach((tweet) => {
      insertTweetQuery(tweet);
    });
  } catch (e) {
    console.log(e);
  }
}

export function insertTweetQuery(tweet) {
  const { author_id, created_at, id, text, lang } = tweet;

  console.log(author_id, created_at, id, text, lang);

  // console.log("\n");

  let insertQuery =
    "INSERT IGNORE INTO ?? (??,??, ??, ??, ??) VALUES (?, ?, ?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "Tweets",
    "tweet_id",
    "tweet_text",
    "created_at",
    "tweet_author_id",
    "lang",
    id,
    text,
    new Date(created_at),
    author_id,
    lang,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("tweets inserted");
    console.log(response.insertId);
  });
}
