
-- 1. List top temporary accommodations from ratings

create view toptempaccommodations as select u.name, u.userid, t.location, t.rent, r.rating, r.ratingtext from temporaryaccommodation as t
inner join user as u on t.userid = u.userid 
inner join reviewratings as r on
t.accommodationid = r.accommodationid order by r.rating desc;

select * from toptempaccommodations;

-- 2. List accoomodations posted by information systems user

create view informationsystemAccommodation as select u.userid, u.name as username, c.name as coursename, un.name as universityname, p.location, p.rent from permanentaccommodation as p
inner join user as u on p.userid = u.userid
inner join course as c on u.courseId = c.courseId 
inner join university as un on un.universityid = u.universityId
where c.courseId = 1 and p.rent < 600;

select * from informationsystemAccommodation;

-- 3.List top prefered (wishlisted) locations by user

create view toplikedlocations as select p.address, w.accommodationId, count(w.accommodationId) as count from permanentaccommodation as p inner join wishlist as w 
on p.accommodationId = w.accommodationId group by w.accommodationId;


select * from toplikedlocations;

-- 4. List top bookings 

create view topbookings as 
select t.userid, t.location, (b.price* datediff(b.enddate, b.startdate)) as totalprice from temporaryaccommodation as t
inner join bookings as b on t.accommodationId = b.accommodationid order by totalprice desc;

select * from topbookings;

-- 5. View popular locations

create view popularlocalities as SELECT tem.location, count(*) as count
FROM (select location from temporaryaccommodation
UNION ALL
select location from permanentaccommodation) as tem group by location order by count DESC;

select * from popularlocalities;

