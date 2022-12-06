import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertMentions(tweets) {
  tweets.forEach((tweet) => {
    const mentions = tweet?.entities?.mentions;
    mentions?.forEach((mention) => {
      insertTweetMentionsQuery(mention, tweet.id);
    });
  });
}

export function insertTweetMentionsQuery(mention, tweetId) {
  const { username, id } = mention;

  console.log(username, id);

  console.log("\n");

  let insertQuery = "INSERT IGNORE INTO ?? (??,??, ??) VALUES (?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "Mentions",
    "mentioned_user_id",
    "mentioned_user_name",
    "tweet_id",
    id,
    username,
    tweetId,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("Metrics inserted");
    console.log(response.insertId);
  });
}

export function deleteMentions() {
  console.log("Deleting Mentions");
  let deleteQuery = "DELETE FROM Mentions";
  pool.query(deleteQuery, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("delete mentions");
    console.log(response.insertId);
  });
}
