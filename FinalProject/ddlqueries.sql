CREATE TABLE `AccommodationRequest` (
  `requestId` int NOT NULL,
  `userid` bigint DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  KEY `FK_AccommodationRequest` (`userid`),
  CONSTRAINT `FK_AccommodationRequest` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
)


CREATE TABLE `Bookings` (
  `bookingid` int NOT NULL,
  `accommodationid` int DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `paymentid` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `FK_Bookings` (`accommodationid`),
  KEY `FK_Bookings_user` (`userid`),
  CONSTRAINT `FK_Bookings` FOREIGN KEY (`accommodationid`) REFERENCES `TemporaryAccommodation` (`accommodationId`),
  CONSTRAINT `FK_Bookings_user` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
)


CREATE TABLE `Course` (
  `courseId` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `universityid` int DEFAULT NULL,
  PRIMARY KEY (`courseId`),
  KEY `FK_Course_university` (`universityid`),
  CONSTRAINT `FK_Course_university` FOREIGN KEY (`universityid`) REFERENCES `University` (`universityId`)
)


CREATE TABLE `Media` (
  `mediaId` int NOT NULL AUTO_INCREMENT,
  `url` varchar(300) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `accommodationId` int DEFAULT NULL,
  PRIMARY KEY (`mediaId`),
  KEY `FK_Media` (`accommodationId`),
  CONSTRAINT `FK_Media` FOREIGN KEY (`accommodationId`) REFERENCES `PermanentAccommodation` (`accommodationId`)
)


CREATE TABLE `Notifications` (
  `notificationId` bigint NOT NULL AUTO_INCREMENT,
  `notificationtext` varchar(100) DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `accommodationId` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`notificationId`),
  KEY `FK_Notification_accommodation` (`accommodationId`),
  CONSTRAINT `FK_Notification_accommodation` FOREIGN KEY (`accommodationId`) REFERENCES `PermanentAccommodation` (`accommodationId`)
)


CREATE TABLE `PermanentAccommodation` (
  `accommodationId` int NOT NULL,
  `userid` bigint DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `aptname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `bath` int DEFAULT NULL,
  `spot` varchar(20) DEFAULT NULL,
  `room` varchar(30) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `posteddate` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `deposit` varchar(45) DEFAULT NULL,
  `leasespot` int DEFAULT NULL,
  `brokerage` varchar(45) DEFAULT NULL,
  `apttype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accommodationId`),
  UNIQUE KEY `id_UNIQUE` (`accommodationId`),
  KEY `idx_accommodationId` (`accommodationId`),
  KEY `idx_accommodation_address` (`address`)
)


CREATE TABLE `Preference` (
  `prefereceId` int NOT NULL,
  `userid` bigint DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `courseId` int DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `food` varchar(45) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prefereceId`),
  KEY `FK_Preference` (`userid`),
  CONSTRAINT `FK_Preference` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
)



CREATE TABLE `RecentlyViewed` (
  `viewId` int NOT NULL,
  `tempId` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `accommodationId` int DEFAULT NULL,
  PRIMARY KEY (`viewId`),
  KEY `FK_RecentlyViewed` (`accommodationId`),
  KEY `FK_RecentlyViewed_User` (`userid`),
  CONSTRAINT `FK_RecentlyViewed` FOREIGN KEY (`accommodationId`) REFERENCES `PermanentAccommodation` (`accommodationId`),
  CONSTRAINT `FK_RecentlyViewed_User` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
) 


CREATE TABLE `ReviewRatings` (
  `reviewId` int NOT NULL AUTO_INCREMENT,
  `ratingtext` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `accommodationId` int DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  PRIMARY KEY (`reviewId`),
  KEY `FK_Rating` (`accommodationId`),
  KEY `FK_Rating_user` (`userid`),
  CONSTRAINT `FK_Rating` FOREIGN KEY (`accommodationId`) REFERENCES `TemporaryAccommodation` (`accommodationId`),
  CONSTRAINT `FK_Rating_user` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
)


CREATE TABLE `roommembers` (
  `id` int NOT NULL,
  `userid` bigint DEFAULT NULL,
  `accommodationId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_roommembers_accommodation` (`accommodationId`),
  KEY `FK_roommembers` (`userid`),
  CONSTRAINT `FK_roommembers` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`),
  CONSTRAINT `FK_roommembers_accommodation` FOREIGN KEY (`accommodationId`) REFERENCES `PermanentAccommodation` (`accommodationId`)
)


CREATE TABLE `TemporaryAccommodation` (
  `accommodationId` int NOT NULL,
  `userid` bigint DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `aptname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `isexpired` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`accommodationId`),
  KEY `FK_TemporaryAccommodation` (`userid`),
  KEY `idx_accommodationId` (`accommodationId`),
  CONSTRAINT `FK_TemporaryAccommodation` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
)


CREATE TABLE `University` (
  `universityId` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`universityId`)
)


CREATE TABLE `User` (
  `userid` bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `term` varchar(45) DEFAULT NULL,
  `courseId` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `yoe` int DEFAULT NULL,
  `passoutyear` int DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `universityId` int DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `FK_Course` (`courseId`),
  KEY `idx_user` (`userid`),
  CONSTRAINT `FK_Course` FOREIGN KEY (`courseId`) REFERENCES `Course` (`courseId`)
)


CREATE TABLE `Wishlist` (
  `wishlistId` int NOT NULL AUTO_INCREMENT,
  `accommodationId` int DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  PRIMARY KEY (`wishlistId`),
  KEY `FK_Wishlist` (`accommodationId`),
  CONSTRAINT `FK_Wishlist` FOREIGN KEY (`accommodationId`) REFERENCES `PermanentAccommodation` (`accommodationId`)
)


ALTER TABLE PermanentAccommodation
ADD CONSTRAINT FK_PermanentAccommodation
FOREIGN KEY (userid) REFERENCES User(userid);

ALTER TABLE TemporaryAccommodation
ADD CONSTRAINT FK_TemporaryAccommodation
FOREIGN KEY (userid) REFERENCES User(userid);


ALTER TABLE Preference
ADD CONSTRAINT FK_Preference
FOREIGN KEY (userid) REFERENCES User(userid);


ALTER TABLE AccommodationRequest
ADD CONSTRAINT FK_AccommodationRequest
FOREIGN KEY (userid) REFERENCES User(userid);



ALTER TABLE Notifications
ADD CONSTRAINT FK_Notification_user
FOREIGN KEY (userid) REFERENCES User(userid);

ALTER TABLE Notifications
ADD CONSTRAINT FK_Notification_accommodation
FOREIGN KEY (accommodationId) REFERENCES PermanentAccommodation(accommodationId);



ALTER TABLE Media
ADD CONSTRAINT FK_Media
FOREIGN KEY (accommodationId) REFERENCES PermanentAccommodation(accommodationId);


ALTER TABLE Bookings
ADD CONSTRAINT FK_Bookings
FOREIGN KEY (accommodationId) REFERENCES TemporaryAccommodation(accommodationId);

ALTER TABLE Bookings
ADD CONSTRAINT FK_Bookings_user
FOREIGN KEY (userid) REFERENCES User(userid);


ALTER TABLE roommembers
ADD CONSTRAINT FK_roommembers
FOREIGN KEY (userid) REFERENCES User(userid);

ALTER TABLE roommembers
ADD CONSTRAINT FK_roommembers_accommodation
FOREIGN KEY (accommodationId) REFERENCES PermanentAccommodation(accommodationId);



ALTER TABLE Wishlist
ADD CONSTRAINT FK_Wishlist
FOREIGN KEY (accommodationId) REFERENCES PermanentAccommodation(accommodationId);


ALTER TABLE User
ADD CONSTRAINT FK_Course
FOREIGN KEY (courseId) REFERENCES Course(courseId);


ALTER TABLE ReviewRatings
ADD CONSTRAINT FK_Rating
FOREIGN KEY (accommodationId) REFERENCES TemporaryAccommodation(accommodationId);

ALTER TABLE ReviewRatings
ADD CONSTRAINT FK_Rating_user
FOREIGN KEY (userid) REFERENCES User(userid);


ALTER TABLE RecentlyViewed
ADD CONSTRAINT FK_RecentlyViewed
FOREIGN KEY (accommodationId) REFERENCES PermanentAccommodation(accommodationId);

ALTER TABLE RecentlyViewed
ADD CONSTRAINT FK_RecentlyViewed_User
FOREIGN KEY (userid) REFERENCES User(userid);


ALTER TABLE Course
ADD CONSTRAINT FK_Course_university
FOREIGN KEY (universityId) REFERENCES University(universityId);


ALTER TABLE User
ADD CONSTRAINT FK_University_User
FOREIGN KEY (universityId) REFERENCES University(universityId);
