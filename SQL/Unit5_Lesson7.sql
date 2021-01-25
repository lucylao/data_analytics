--- create weblinks table ---
create table weblinks (
id serial primary key,
url varchar(255) not null,
name varchar(255) not null,
description varchar(255));

select * from weblinks

--- insert data into Weblinks table ---
insert into weblinks(url,name)
values ('www.google.com', 'Google'),
('www.apple.com', 'Apple');

--- inserting more rows into weblinks table --- 
insert into weblinks(url,name)
values ('www.amazon.com', 'Amazon'),
		('www.ign.com', 'IGN'),
		('www.cuny.edu', 'CUNY');
		
--- copy structure of weblinks table but not data ---
create table copy_weblinks (like weblinks);

select * from copy_weblinks

--- update values in table --- 
update weblinks
set description = 'website for all your shopping needs'
where name = 'Amazon'

--- the updated values go to the end of the table --- 
update weblinks
set description = 'shop for expensive tech'
where id = 3;

--- updating the rest of descriptions ---
update weblinks
set description = 'college website'
where id = 6;

update weblinks
set description = 'game reviews'
where id = '5';

update weblinks
set description = 'tech monopoly'
where id = '2';

--- update all description values to url values ---
update weblinks
set description = url;
 
--- update all description values to 'empty description' ---
update weblinks
set description = 'empty description';

--- delete row ---
delete from weblinks 
where id = 2;

--- delete row ---
delete from weblinks
where name = 'IGN';


select * from weblinks



/*delete values ('www.google.com', 'Google')*/