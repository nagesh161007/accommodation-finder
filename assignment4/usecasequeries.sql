-- 1. List username and contact information of users who posted temporary accommodation with rent less than 20
create view cheapaccommodations as select u.name ,ta.* from User as u inner join Temporaryaccommodation as ta
on ta.userid = u.userid where ta.rent < 20;

select * from cheapaccommodations;

-- select u.contact, u.name, ta.* from user as u inner join temporaryaccommodation as ta
-- on ta.number = u.contact where ta.rent < 20;

-- 2. List address of both permanent and temporary accommodations posted by user 

create view userposts as SELECT tem.address 
FROM (select address from Temporaryaccommodation  where userid = 9452094012
UNION ALL
select address from Permanentaccommodation where userid = 9452094012) as tem group by address;

select * from userposts;

-- SELECT tem.address 
-- FROM (select address from temporaryaccommodation  where number = 9452094012
-- UNION ALL
-- select address from permanentaccommodation where contact = 9452094012) as tem group by address;


-- 3. List popular localities of both 

create view popularlocalities as SELECT tem.location, count(*) as count
FROM (select location from temporaryaccommodation
UNION ALL
select location from permanentaccommodation) as tem group by location order by count DESC;

select * from popularlocalities;

-- SELECT tem.locality, count(*) as count
-- FROM (select locality from temporaryaccommodation
-- UNION ALL
-- select location from permanentaccommodation) as tem group by locality order by count DESC;

-- 4. Get contact accomodations with 2 bhk and 1 bath with private room with rent below 800 for female 

create view contactlist as select pa.userid, u.name from permanentaccommodation as pa inner join user as u on u.userid = pa.userid where gender = 'GIRL' and bed = 2 and bath = 1 and rent < 800;

select * from contactlist;

-- select pa.contact, u.name from permanentaccommodation as pa inner join user as u on u.contact = pa.contact where gender = 'GIRL' and bed = 2 and bath = 1 and rent < 800;


-- 5. List permanent accommodations for girl with starting date between dec 15 and dec 31 with rent less than 600 for shared room

create view decemberseason_vacacies as select * from permanentaccommodation where gender = 'GIRL' and rent < 600 and startdate BETWEEN '2022-12-15' AND '2022-12-31' and room = 'SHARED'

select * from decemberseason_vacacies;

-- 6. Select all northeastern university students

create view northeasternstudens as select * from user where universityId= 1;

select * from northeasternstudens;
 

-- select * from permanentaccommodation where gender = 'GIRL' and rent < 600 and start BETWEEN '2022-12-15' AND '2022-12-31' and roomtype = 'SHARED'

-- 6. List names the users who posted temporary accomodation for female 
CREATE VIEW girl _temp_acc as 
select usr.name from user usr inner join temporaryaccommodation tmp on usr.userid = tmp.userid where tmp.gender='GIRL';

--select usr.name from user usr inner join temporaryaccommodation tmp on usr.contact = tmp.number where tmp.gender='GIRL';

-- 7. List contact of user from permanent accommodations with rent greater than 500
CREATE VIEW per_acc_rent500 as 
select pac.contact, usr.name from user usr inner join permanentaccommodation pac on usr.userid = pac.userid where pac.rent > 500;

--select pac.contact, usr.name from user usr inner join permanentaccommodation pac on usr.contact = pac.contact where pac.rent > 500;


-- 8. List the id with contact no in permanent accommodation with start date after December
CREATE VIEW per_acc_startdate as select pac.contact, pac.address from user usr inner join permanentaccommodation pac on usr.userid = pac.userid where pac.start >2022-12-31
--select pac.contact, pac.address from user usr inner join permanentaccommodation pac on usr.contact = pac.contact where pac.start >2022-12-31;


-- 9. List the names in permanent accommodation with 1 bed type
CREATE VIEW per_acc_1bed as 
select pac.contact, pac.address from user usr inner join permanentaccommodation pac on usr.userid = pac.userid where pac.bed=1;
--select pac.contact, pac.address from user usr inner join permanentaccommodation pac on usr.contact = pac.contact where pac.bed=1;

-- 10. List the names of the temporary accommodation with descriptions
CREATE VIEW temp_acc_desc as select usr.name from user usr inner join temporaryaccommodation tmp on usr.userid = tmp.userid where tmp.description is not null;
--select usr.name from user usr inner join temporaryaccommodation tmp on usr.contact = tmp.number where tmp.description is not null;
