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
(383, '13 tabor pl Brookline ', 'Brookline ', 20, '2022-12-27 00:00:00', '2023-01-13 00:00:00', 'BOY', 'Hemanthhhh', 8573905572, 2, 'PRIVATE', "example description" );






-- Example Insert queries

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
(1000, "Calumet Street ,Mission Hill, Boston, MA ", "Mission Hill", 512, 'SHARED', 'GIRL', 1, 3, 1, 'GIRL', '2022-12-31 00:00:00', '2023-01-23 00:00:00', 'room', 'Neha', 16172384663, "- Safe location around NEU\n\n🚘Accessible by Red Eye\n🚇6 minute walk to Green line\n🏬20 minute walk to NEU ( 1.1 mile )\n🍲 10 minutes walking to Punjab mini market \n\n- We’re all non vegetarians \n- occasional drinks allowed \n- Non smokers");
