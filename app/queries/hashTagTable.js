import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertHashTag(tweets) {
  const hashTags = [];
  tweets.forEach((tweet) => {
    if (tweet.entities && tweet.entities.hashtags) {
      console.log("tweet having entities", tweet.id);
      tweet.entities?.hashtags?.forEach((hashtag) => {
        if (hashtag.tag) {
          hashTags.push({
            tweetId: tweet.id,
            hashtag: hashtag.tag,
          });
        }
      });
    }
  });
  hashTags.forEach((hashTag) => {
    insertHashTagQuery(hashTag);
  });
}

export function insertHashTagQuery(hashTag) {
  const { tweetId, hashtag } = hashTag;

  console.log(tweetId, hashtag);

  console.log("\n");

  let insertQuery = "INSERT IGNORE INTO ?? (??,??) VALUES (?, ?)";
  let query = mysql.format(insertQuery, [
    "Hashtags",
    "tweet_id",
    "hash_tag",
    tweetId,
    hashtag,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("hashTag inserted");
    console.log(response.insertId);
  });
}

export function deleteHashTag() {
  console.log("Deleting Hashtag");
  let deleteQuery = "DELETE FROM Hashtags";
  pool.query(deleteQuery, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("delete hashtags");
    console.log(response.insertId);
  });
}
