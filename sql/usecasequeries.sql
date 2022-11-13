-- 1.What user posted this tweet?

SELECT tu.name, tu.twitter_user_id, t.tweet_text
FROM Tweets AS t INNER JOIN TwitterUser AS tu
on t.tweet_author_id=tu.twitter_user_id WHERE t.tweet_id='1590933806558883840';

-- Π TwitterUser.name tweet_id = "1590933806558883840" (Tweets ⋈ Tweets.tweet_author_id  =  TwitterUser.twitter_user_id (TwitterUser))

-- 2.When did the user post this tweet?

SELECT t.created_at
FROM Tweets AS t INNER JOIN TwitterUser AS tu
ON t.tweet_author_id=tu.twitter_user_id WHERE t.tweet_id='1590933806558883840';

-- Π Tweets.created_at tweet_id = "1590933806558883840" (Tweets ⋈ Tweets.tweet_author_id  =  TwitterUser.twitter_user_id (TwitterUser))

-- 3.What tweets have this user posted in the past 24 hours?

SELECT  * FROM Tweets AS t INNER JOIN TwitterUser AS tu ON t.tweet_author_id=tu.twitter_user_id
WHERE t.tweet_author_id='1589634110984699904' AND t.created_at >= NOW() - INTERVAL 1 DAY;

-- σ tweet_id = "1590933806558883840 and created_at > NOW() - INTERVAL 1 DAY (Tweets ⋈ Tweets.tweet_author_id  =  TwitterUser.twitter_user_id (TwitterUser))

-- 4.How many tweets have this user posted in the past 24 hours?

SELECT count(t.tweet_id)
FROM Tweets AS t INNER JOIN TwitterUser AS tu on t.tweet_author_id=tu.twitter_user_id
WHERE t.tweet_author_id='1589634110984699904' AND t.created_at >= NOW() - INTERVAL 1 DAY;

-- σ COUNT(*)tweet_id = "1590933806558883840 and created_at > NOW() - INTERVAL 1 DAY (Tweets ⋈ Tweets.tweet_author_id  =  TwitterUser.twitter_user_id (TwitterUser))


-- 5.When did this user join Twitter?

SELECT tu.created_at
FROM Tweets AS t INNER JOIN TwitterUser AS tu on t.tweet_author_id=tu.twitter_user_id
WHERE t.tweet_id='1590933806558883840';

-- Π TwitterUser.created_at tweet_id = "1590933806558883840" (Tweets ⋈ Tweets.tweet_author_id  =  TwitterUser.twitter_user_id (TwitterUser))

-- 6.What keywords/ hashtags are popular?

SELECT DISTINCT hash_tag
FROM Hashtags
GROUP BY hash_tag
ORDER BY count(hash_tag) DESC
LIMIT 2;

-- τ -COUNT(hash_tag) (Hashtags) γ hash_tag

-- 7.What tweets are popular?

SELECT t.tweet_text
FROM Tweets AS t
INNER JOIN Metrics as m on t.tweet_id = m.tweet_id ORDER BY m.like_count DESC;

-- τ -Metrics.like_count Π Tweets.tweet_text  (Tweets ⋈ Tweets.tweet_id  =  Metrics.tweet_id (Metrics))



-- Project Twitter Model Use case Queries

-- 1. List Permanent accommodations posted by MS DAE students
Select tweet_id, tweet_text from Tweets where tweet_author_id in (SELECT tu.twitter_user_id from TwitterUser as tu 
INNER JOIN AccommodationUser as au on tu.twitter_handle = au.tweet_handle
where au.course= 'MS DAE');

-- 2. List Temporary accomodations with high rating (likes)

SELECT * from TemporaryAccomodation where tweet_id = (SELECT t.tweet_id
FROM Tweets AS t
INNER JOIN Metrics as m on t.tweet_id = m.tweet_id ORDER BY m.like_count DESC LIMIT 1);

-- 3. List tweethandles of tweets containing Huntington in the address field

select tweet_text, tweet_author_id from Tweets where tweet_id in 
(select tweet_id from PermanentAccommodation where LOWER(address) LIKE  '%hunt%');

-- 4. List tweets with temporary accomodations availability between Nov and December with per day rent between 10 - 30

select au.email, au.phone from AccommodationUser as au INNER JOIN TwitterUser as tu on au.tweet_handle = tu.twitter_handle where tu.twitter_user_id in 
(select tweet_author_id from Tweets where tweet_id in (select tweet_id from TemporaryAccomodation where  rent between 15 AND 25));


-- 5. List twitter users who posted Permanets accommodations tweets with between 1-Nov and 1-December


select tu.twitter_user_id, tu.twitter_handle from Tweets t INNER JOIN TwitterUser tu on tu.twitter_user_id = t.tweet_author_id in (
select tweet_id from PermanentAccommodation where available_start BETWEEN '2022-11-01' AND '2033-12-1' AND available_end BETWEEN '2022-11-01' AND '2033-12-1');



-- 6. List all permanent accommodations with start date greater than 1-December

Select * from PermanentAccomodation where available_start '2022-11-20';

-- 7. List contact information of person who has listed permanent accommodations with bed count > 1

Select * from PermanentAccomodation pa INNER JOIN Tweets tw ON pa.tweet_id=tw.tweet_id WHERE pa.bed=1 AND tw.tweet_author_id= (enter your id);

-- 8. List of all the room that cost Permanenet Accommodation greater than 400 

Select * from TemporaryAccomodation where rent>=400;

-- 9. List of all the apartments in the bolyston street


SELECT rent, location, bed, gender, available_start, available_end, tweet_id FROM (SELECT rent, location, bed, gender, available_start, available_end, tweet_id from PermanentAccomodation UNION 
SELECT rent, location, bed, gender, available_start, available_end, tweet_id FROM TemporaryAccomodation)
Where location LIKE  '%bolyston%';


---10. change the price list below 500 dollars as 250 dollars in Temporary accommodations

Update TemporaryAccomodation SET rent = 250 where rent < 500;

