create table movie(
	movie_id serial primary key,
	movie_name VARCHAR(30) not null,
	movie_description VARCHAR(200),
	movie_rating VARCHAR(10) not null
);

create table customer(
	customer_id serial primary key,
	loyalty_member BOOLEAN default false,
	customer_age INTEGER
);

create table ticket(
	ticket_id serial primary key,
	ticket_price numeric(4,2),
	ticket_type VARCHAR(10) not null,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	movie_id INTEGER not null,
	foreign key(movie_id) references movie(movie_id)
);

insert into movie values(
	1,
	'The rise of Gru',
	'The young Gru is trying to take over the world.',
	'PG-13'
);

insert into movie values(
	2,
	'The rise of older Gru',
	'Adult Gru is going to take over the world',
	'R'
)

insert into customer values(
	1,
	false,
	13
);
insert into customer values(
	2,
	true,
	35
);
insert into ticket values(
	1,
	13.99,
	'PG-13',
	1,
	1
);
insert into ticket values(
	2,
	16.99,
	'R',
	2,
	2
)

select * from ticket