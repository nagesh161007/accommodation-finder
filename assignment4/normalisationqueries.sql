use accommodationDatabase;

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