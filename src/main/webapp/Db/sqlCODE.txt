create table applications(
id serial primary key,
fio varchar(40) not null,
course varchar(25) not null,
mail varchar(50) unique,
birthdate date,
gender varchar(10) not null,
selfstory varchar(200),
isOnline boolean not null,
dateadded timestamp not null default now()
)