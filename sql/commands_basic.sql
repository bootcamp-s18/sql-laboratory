create table person (
	name varchar(100),
	favorite_color varchar(25),
	favorite_food varchar(25),
	lucky_number smallint,
	id serial
);

insert into person (name, favorite_color, favorite_food, lucky_number) values ('Matthew', 'blue', 'everything bagel', 16);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Ryan', 'chartreuse', 'cabbage', 69);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Dimitri', 'green', 'pizza', 23);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Christian', 'purple', 'cheeseburgers', 3);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Karla', 'green', 'potatoes', 7);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Beth', 'turquoise', 'hummus', 13);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Kevin', 'green', 'waffles', 17);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Chris', 'blue', 'burritos', 11);
insert into person (name, favorite_color, favorite_food, lucky_number) values ('Janine', 'purple', 'sushi', 3);

select * from person;

select * from person where favorite_color = 'green';

select count(*) from person;

select sum(lucky_number) from person;

select sum(lucky_number) from person where favorite_color = 'purple';

select * from person order by lucky_number;

select * from person order by lucky_number desc;

select * from person order by lucky_number, favorite_color;

select favorite_color, count(*) from person group by favorite_color;

select favorite_color, count(*) from person group by favorite_color order by favorite_color;

select favorite_color, count(*) as total from person group by favorite_color order by total desc, favorite_color;

