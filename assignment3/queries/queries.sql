-- permanentaccommodation
CREATE TABLE `permanentaccommodation` (
  `index` bigint DEFAULT NULL,
  `location` text,
  `address` text,
  `rent` double DEFAULT NULL,
  `roomtype` text,
  `gender` text,
  `vacancy` double DEFAULT NULL,
  `bed` double DEFAULT NULL,
  `bath` double DEFAULT NULL,
  `apartment_type` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `spot` text,
  `name` text,
  `contact` bigint DEFAULT NULL,
  `description` text
)

-- temporaryaccommodation

CREATE TABLE `temporaryaccommodation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` text,
  `locality` text,
  `rent` double DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `gender` text,
  `name` text,
  `number` bigint DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `spot` text,
  `description` text
)

-- user
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `contact` bigint NOT NULL,
  PRIMARY KEY (`contact`)
)



ALTER TABLE permanentaccommodation
ADD CONSTRAINT pa_user
FOREIGN KEY (contact) REFERENCES user(contact);


ALTER TABLE temporaryaccommodation
ADD CONSTRAINT ta_user
FOREIGN KEY (number) REFERENCES user(contact);



-- insert queries




INSERT INTO `accommodationDB`.`permanentaccommodation`
(`index`,
`location`,
`address`,
`rent`,
`roomtype`,
`gender`,
`vacancy`,
`bed`,
`bath`,
`apartment_type`,
`start`,
`end`,
`spot`,
`name`,
`contact`,
`description`)
VALUES
(<{index: }>,
<{location: }>,
<{address: }>,
<{rent: }>,
<{roomtype: }>,
<{gender: }>,
<{vacancy: }>,
<{bed: }>,
<{bath: }>,
<{apartment_type: }>,
<{start: }>,
<{end: }>,
<{spot: }>,
<{name: }>,
<{contact: }>,
<{description: }>);


-- temporary accommodation

INSERT INTO `accommodationDB`.`temporaryaccommodation`
(`id`,
`address`,
`locality`,
`rent`,
`start`,
`end`,
`gender`,
`name`,
`number`,
`vacancy`,
`spot`,
`description`)
VALUES
(<{id: }>,
<{address: }>,
<{locality: }>,
<{rent: }>,
<{start: }>,
<{end: }>,
<{gender: }>,
<{name: }>,
<{number: }>,
<{vacancy: }>,
<{spot: }>,
<{description: }>);

-- user insert

INSERT INTO `accommodationDB`.`user`
(`userid`,
`name`,
`contact`)
VALUES
(<{userid: }>,
<{name: }>,
<{contact: }>);
