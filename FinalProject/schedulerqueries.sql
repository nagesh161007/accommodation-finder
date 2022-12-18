-- Registers event which check in an interval of 1 hour and makes the accomomodation record as expired when 

SHOW PROCESSLIST;

SET GLOBAL event_scheduler = ON;

CREATE EVENT accommodationExpiry
ON SCHEDULE EVERY 1 MINUTE
STARTS CURRENT_TIMESTAMP
DO
UPDATE temporaryaccommodation
SET isexpired = true
WHERE enddate < NOW();


CREATE EVENT accommodationExpiryPermanent
ON SCHEDULE EVERY 1 MINUTE
STARTS CURRENT_TIMESTAMP
DO
UPDATE permanentaccommodation
SET isexpired = true
WHERE enddate < NOW();