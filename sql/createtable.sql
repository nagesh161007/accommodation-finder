CREATE TABLE `AccommodationUser` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `tweet_handle` varchar(20) NOT NULL,
  `university_name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `accommodation_user_tweet_key` (`tweet_handle`),
  CONSTRAINT `accommodation_user_tweet_key` FOREIGN KEY (`tweet_handle`) REFERENCES `TwitterUser` (`twitter_handle`)
)


CREATE TABLE `Media` (
  `media_key` varchar(100) NOT NULL,
  `media_url` varchar(100) NOT NULL,
  `tweet_id` varchar(150) NOT NULL,
  PRIMARY KEY (`media_key`),
  KEY `Tweet_id_media` (`tweet_id`),
  CONSTRAINT `Tweet_id_media` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
)


CREATE TABLE `Mentions` (
  `tweet_id` varchar(150) NOT NULL,
  `mentioned_user_id` varchar(150) DEFAULT NULL,
  `mentioned_user_name` varchar(150) DEFAULT NULL,
  `mention_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`mention_id`)
)


CREATE TABLE `Metrics` (
  `tweet_id` varchar(150) NOT NULL,
  `retweet_count` int DEFAULT NULL,
  `reply_count` int DEFAULT NULL,
  `like_count` int DEFAULT NULL,
  `quote_count` int DEFAULT NULL,
  PRIMARY KEY (`tweet_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  CONSTRAINT `tweet_metric_key` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`),
  CONSTRAINT `tweet_metrics_key` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
)


CREATE TABLE `PermanentAccommodation` (
  `accommodationId` int NOT NULL AUTO_INCREMENT,
  `rent` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  `bath` int DEFAULT NULL,
  `tweet_id` varchar(150) NOT NULL,
  `gender` enum('Boys','Girls','Mixed') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `available_start` datetime DEFAULT NULL,
  `available_end` datetime DEFAULT NULL,
  `hall` int DEFAULT NULL,
  `bedroom` int DEFAULT NULL,
  PRIMARY KEY (`accommodationId`),
  KEY `Tweet_Id_Key` (`tweet_id`),
  CONSTRAINT `Tweet_Id_Key` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
)



CREATE TABLE `TemporaryAccomodation` (
  `accommodation_id` int NOT NULL AUTO_INCREMENT,
  `rent` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `available_start` datetime DEFAULT NULL,
  `available_end` datetime DEFAULT NULL,
  `tweet_id` varchar(100) DEFAULT NULL,
  `gender` enum('Boys','Girls','Mixed') DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accommodation_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  CONSTRAINT `Tweet_Id_Key_Temporary` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
)


CREATE TABLE `Tweets` (
  `tweet_id` varchar(150) NOT NULL,
  `tweet_text` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `tweet_author_id` varchar(150) DEFAULT NULL,
  `lang` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  KEY `tweet_user_foreign_key` (`tweet_author_id`),
  CONSTRAINT `tweet_user_foreign_key` FOREIGN KEY (`tweet_author_id`) REFERENCES `TwitterUser` (`twitter_user_id`)
)



CREATE TABLE `TwitterUser` (
  `twitter_handle` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `twitter_user_id` varchar(150) DEFAULT NULL,
  `profile_image_url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`twitter_handle`),
  UNIQUE KEY `twitter_user_id_UNIQUE` (`twitter_user_id`)
)