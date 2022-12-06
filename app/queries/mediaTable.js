import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertMedia(tweets) {
  const media = [];
  tweets.forEach((tweet) => {
    if (tweet.entities && tweet.entities.urls) {
      console.log("tweet having entities", tweet.id);
      tweet.entities.urls.forEach((url) => {
        if (url.media_key) {
          media.push({
            mediaKey: url.media_key,
            tweetId: tweet.id,
            mediaUrl: url.expanded_url,
          });
        }
      });
    }
  });
  media.forEach((media) => {
    insertMediaQuery(media);
  });
}

export function insertMediaQuery(media) {
  const { tweetId, mediaUrl, mediaKey } = media;

  console.log(tweetId, mediaUrl, mediaKey);

  console.log("\n");

  let insertQuery = "INSERT IGNORE INTO ?? (??,??, ??) VALUES (?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "Media",
    "tweet_id",
    "media_url",
    "media_key",
    tweetId,
    mediaUrl,
    mediaKey,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("media inserted");
    console.log(response.insertId);
  });
}
