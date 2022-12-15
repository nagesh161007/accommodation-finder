-- Trigger for send notifications to user when new accommodation inserted to database matches their preference which calls the stored procedure for creating notification in the notification table


DROP TRIGGER IF EXISTS `accommodationDatabase`.`PermanentAccommodation_AFTER_INSERT`;

DELIMITER $$
USE `accommodationDatabase`$$
CREATE DEFINER = CURRENT_USER TRIGGER `accommodationDatabase`.`PermanentAccommodation_AFTER_INSERT` AFTER INSERT ON `PermanentAccommodation` FOR EACH ROW
BEGIN
	call accommodationdatabase.notifyusers(NEW.accommodationId, NEW.rent);
END$$
DELIMITER ;



CREATE DEFINER=`root`@`localhost` PROCEDURE `notifyusers`(accommodationIdparam int, rentparam float)
BEGIN
	INSERT INTO Notifications (notificationtext, userid, accommodationId, time)
	SELECT "Accommodation posted", userid, accommodationIdparam, now() FROM Preference
	WHERE rentparam < rent;
END
