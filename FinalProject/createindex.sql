CREATE INDEX idx_accommodationId_user
ON PermanentAccommodation (userid);

CREATE INDEX idx_accommodationId_user
ON TemporaryAccommodation (userid);

CREATE INDEX idx_user
ON user (userid);

CREATE INDEX idx_accommodationId
ON PermanentAccommodation (accommodationId);

CREATE INDEX idx_accommodationId
ON TemporaryAccommodation (accommodationId);
