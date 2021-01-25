
--- Create Videos tables and populate with 3 rows of data ---
drop table if exists videos;

create table videos (
id serial primary key,
video_title varchar(255) not null,
minutes time not null,
url varchar(255) not null);

insert into videos (video_title, minutes, url)
values ('Hidden Figures Trailer', '2:38', 'https://youtu.be/5wfrDhgUMGI'),
		('Happiest Season Trailer', '2:28', 'https://youtu.be/h58HkQV1gHY'),
		('Hustlers', '2:26', 'https://youtu.be/305sELs60kc');
		
update videos
set video_title = 'Hustlers Trailer'
where id = 3;

select * from videos;

--- create and populate Reviewers table ---
drop table if exists reviewers;

create table reviewers (
id serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
rating numeric,
video_title varchar(255) not null,
text_review varchar(250) not null);

insert into reviewers (first_name, last_name, rating, video_title, text_review)
values ('Abby', 'Zims', '5', 'Hidden Figures Trailer', 'must see'),
		('Amy', 'Cruz', '3', 'Hidden Figures Trailer', 'okay but slow plot'),
		('Carol', 'Lin', '5', 'Happiest Season Trailer', 'worth the wait'),
		('Kelley', 'Zheng', '4', 'Happiest Season Trailer', 'loved it'),
		('Crystal', 'Brown', '3', 'Hustlers Trailer', 'could have been better'),
		('Ashley', 'Trom', '2', 'Hustlers Trailer', 'not worth your time');

select * from reviewers;

--- join videos and reviewers table ---
select * from videos
join reviewers
on videos.video_title = reviewers.video_title