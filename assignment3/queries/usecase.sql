-- 1. List username and contact information of users who posted temporary accommodation with rent less than 20

select u.contact, u.name, ta.* from user as u inner join temporaryaccommodation as ta
on ta.number = u.contact where ta.rent < 20;

-- 2. List address of both permanent and temporary accommodations posted by user 

SELECT tem.address 
FROM (select address from temporaryaccommodation  where number = 9452094012
UNION ALL
select address from permanentaccommodation where contact = 9452094012) as tem group by address;


-- 3. List popular localities of both 

SELECT tem.locality, count(*) as count
FROM (select locality from temporaryaccommodation
UNION ALL
select location from permanentaccommodation) as tem group by locality order by count DESC;

-- 4. Get contact accomodations with 2 bhk and 1 bath with private room with rent below 800 for female 

select pa.contact, u.name from permanentaccommodation as pa inner join user as u on u.contact = pa.contact where gender = 'GIRL' and bed = 2 and bath = 1 and rent < 800;


-- 5. List permanent accommodations for girl with starting date between dec 15 and dec 31 with rent less than 600 for shared room

select * from permanentaccommodation where gender = 'GIRL' and rent < 600 and start BETWEEN '2022-12-15' AND '2022-12-31' and roomtype = 'SHARED'



