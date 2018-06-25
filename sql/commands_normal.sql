create table person (
	id serial,
	name varchar(100),
	favorite_color_id integer,
	favorite_food_id integer,
	lucky_number_id integer
);

create table color (
	id serial,
	name varchar(25)
);

create table food (
	id serial,
	name varchar(25)
);

create table lucky (
	id serial,
	name integer
);

insert into color (name) values ('blue');
insert into color (name) values ('green');
insert into color (name) values ('purple');
insert into color (name) values ('turquoise');
insert into color (name) values ('chartreuse');

insert into person (name, favorite_food_id) values ('Matthew', (select id from color where name = 'blue'));

update person set favorite_color_id = (select id from color where name = 'blue'), favorite_food_id = null where name = 'Matthew';

insert into food (id, name) values (1, 'everything_bagel');
insert into food (id, name) values (2, 'cabbage');
insert into food (id, name) values (3, 'pizza');
insert into food (id, name) values (4, 'cheeseburgers');
insert into food (id, name) values (5, 'potatoes');
insert into food (id, name) values (6, 'hummus');
insert into food (id, name) values (7, 'waffles');
insert into food (id, name) values (8, 'burritos');
insert into food (id, name) values (9, 'sushi');

insert into lucky (id, name) values (1, 16);
insert into lucky (id, name) values (2, 69);
insert into lucky (id, name) values (3, 23);
insert into lucky (id, name) values (4, 3);
insert into lucky (id, name) values (5, 7);
insert into lucky (id, name) values (6, 13);
insert into lucky (id, name) values (7, 17);
insert into lucky (id, name) values (8, 11);

update person set favorite_food_id = 1, lucky_number_id = 1 where name = 'Matthew';

update person set favorite_color_id = 3 where name = 'Ryan';

select person.id, person.name, color.name 
from person
join color on person.favorite_color_id = color.id;

insert into person (name) values ('Ryan');

Cartesian Product
select person.name, color.name from person, color;

insert into person (name) values ('Dimitri');

delete from person where id = 4;

Outer Join
select person.name, color.name from person full outer join color on person.favorite_color_id = color.id;

Left Join
select person.name, color.name from person left join color on person.favorite_color_id = color.id;

Right Join
select person.name, color.name from person right join color on person.favorite_color_id = color.id;

select * from person;

update person set favorite_food_id = 2, lucky_number_id = 2 where name = 'Ryan';
update person set favorite_color_id = 2, favorite_food_id = 3, lucky_number_id = 3 where name = 'Dimitri';

select * from person;

insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Christian', 3, 4, 4);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Karla', 2, 5, 5);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Kevin', 2, 7, 7);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Beth', 4, 6, 6);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Chris', 1, 8, 8);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Janine', 3, 9, 4);

select person.id, person.name, color.name, food.name, lucky.name
from person join food on person.favorite_food_id = food.id
join color on person.favorite_color_id = color.id
join lucky on person.lucky_number_id = lucky.id
order by person.name;








