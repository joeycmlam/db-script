create table account (
	account_id  	serial primary key,
	account_name 	varchar(50) unique not null,
	last_update 	timestamp
);

create table txn (
	txn_id 			serial primary key,
	account_id 		integer 		not null,
	stock_code 		varchar(10) 	not null,
	txn_type 		varchar(5) 		not null,
	txn_qty 		numeric(13, 5) 	not null,
	txn_amt 		numeric(13, 2) 	not null,
	txn_date 		timestamp
);


create table holding (
	holding_id	serial primary key,
	stock_code	varchar(10) 	not null,
	quantity	numeric(13, 5) 	not null,
	last_udpate	timestamp
);