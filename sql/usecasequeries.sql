-- 1.What user posted this tweet?

SELECT tu.name,tu.twitter_user_id, t.tweet_text
FROM Tweets AS t, TwitterUser AS tu
WHERE t.tweet_id='1590933806558883840' AND t.tweet_author_id=tu.twitter_user_id;


-- 2.When did the user post this tweet?

SELECT tu.name,tu.twitter_user_id, t.created_at
FROM Tweets AS t, TwitterUser AS tu
WHERE t.tweet_id='1590933806558883840' AND t.tweet_author_id=tu.twitter_user_id;


-- 3.What tweets have this user posted in the past 24 hours?

SELECT tu.name, tu.twitter_user_id, tu.created_at, t.tweet_text
FROM Tweets AS t, TwitterUser AS tu
WHERE t.tweet_author_id='1589634110984699904' AND t.tweet_author_id=tu.twitter_user_id AND t.created_at >= NOW() - INTERVAL 2 DAY;

-- 4.How many tweets have this user posted in the past 24 hours?

SELECT count(t.tweet_id)
FROM Tweets AS t, TwitterUser AS tu
WHERE t.tweet_author_id='1589634110984699904' AND t.tweet_author_id=tu.twitter_user_id AND t.created_at >= NOW() - INTERVAL 2 DAY;


-- 5.When did this user join Twitter?

SELECT tu.name,tu.twitter_user_id, tu.created_at
FROM Tweets AS t, TwitterUser AS tu
WHERE t.tweet_id='1590933806558883840' AND t.tweet_author_id=tu.twitter_user_id;

-- 6.What keywords/ hashtags are popular?

SELECT DISTINCT hash_tag, count(hash_tag)
FROM Hashtags
GROUP BY hash_tag
ORDER BY count(hash_tag) DESC
LIMIT 2;


-- 7.What tweets are popular?

SELECT t.tweet_text, t.tweet_id, m.like_count
FROM Tweets AS t
INNER JOIN Metrics as m on t.tweet_id = m.tweet_id ORDER BY m.like_count,m.reply_count, m.retweet_count ASC;
