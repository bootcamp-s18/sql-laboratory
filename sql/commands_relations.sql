create table color (
	id serial primary key,
	name varchar(25) not null unique
);

create table food (
	id serial primary key,
	name varchar(25) not null unique
);

create table lucky (
	id serial primary key,
	name integer not null unique
);

create table person (
	id serial primary key,
	name varchar(100) not null unique,
	favorite_color_id integer,
	favorite_food_id integer references food(id),
	lucky_number_id integer
);


insert into color (name) values ('blue');
insert into color (name) values ('green');
insert into color (name) values ('purple');
insert into color (name) values ('turquoise');
insert into color (name) values ('chartreuse');

insert into color (name) values (null);

insert into color (name) values ('';)

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

insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Matthew', 1, 1, 1);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Ryan', 3, 2, 2);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Dimitri', 2, 3, 3);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Christian', 3, 4, 4);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Karla', 2, 5, 5);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Kevin', 2, 7, 7);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Beth', 4, 6, 6);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Chris', 1, 8, 8);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Janine', 3, 9, 4);

insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Joker', null, null, null);
insert into person (name, favorite_color_id, favorite_food_id, lucky_number_id) values ('Riddler', 37, null, null);

select * from person;

select person.id, person.name, color.name, food.name, lucky.name
from person join food on person.favorite_food_id = food.id
join color on person.favorite_color_id = color.id
join lucky on person.lucky_number_id = lucky.id
order by person.name;



