ALTER TABLE PermanentAccommodation ADD CONSTRAINT Tweet_Id_Key
FOREIGN KEY (tweet_id) REFERENCES Tweets(tweet_id); 

ALTER TABLE TemporaryAccomodation ADD CONSTRAINT Tweet_Id_Key_Temporary
FOREIGN KEY (tweet_id) REFERENCES Tweets(tweet_id); 

ALTER TABLE Media ADD CONSTRAINT Tweet_id_media
FOREIGN KEY (tweet_id) REFERENCES Tweets(tweet_id); 

ALTER TABLE Tweets ADD CONSTRAINT tweet_user_foreign_key
FOREIGN KEY (tweet_author_id) REFERENCES TwitterUser(twitter_user_id);


ALTER TABLE AccommodationUser ADD CONSTRAINT accommodation_user_tweet_key
FOREIGN KEY (tweet_handle) REFERENCES TwitterUser(twitter_handle);


ALTER TABLE Mentions ADD CONSTRAINT tweet_mention_key
FOREIGN KEY (tweet_id) REFERENCES Tweets(tweet_id);

ALTER TABLE Metrics ADD CONSTRAINT tweet_metric_key
FOREIGN KEY (tweet_id) REFERENCES Tweets(tweet_id);