import mysql from "mysql";
import pool from "../utils/connect.js";

export function insertTweetMetric(tweets) {
  console.log(tweets.length);
  tweets.forEach((tweet) => {
    insertTweetMetricsQuery(tweet.public_metrics, tweet.id);
  });
}

export function insertTweetMetricsQuery(metrics, tweetId) {
  const { retweet_count, reply_count, like_count, quote_count } = metrics;
  console.log(retweet_count, reply_count, like_count, quote_count, tweetId);
  console.log("\n");
  let insertQuery =
    "INSERT IGNORE INTO ?? (??,??, ??, ??, ??) VALUES (?, ?, ?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "Metrics",
    "retweet_count",
    "reply_count",
    "like_count",
    "quote_count",
    "tweet_id",
    retweet_count,
    reply_count,
    like_count,
    quote_count,
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

export function deleteMetrics() {
  console.log("Deleting metrics");
  let deleteQuery = "DELETE FROM Metrics";
  pool.query(deleteQuery, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("delete metrics");
    console.log(response.insertId);
  });
}
