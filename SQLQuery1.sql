CREATE Table clients(
id INT not null primary key identity,
name varchar(100) not null,
email varchar(100) not null unique,
phone varchar(20) null,
address varchar(100) null,
created_at datetime not null default current_timestamp
);

set identity_insert clients on;

insert into clients(id,name,email,phone,address)
values
(001,'Bill Gates','bill.gates@microsoft.com','+1234567890','New York,USA'),
(002,'Tim Cook','time.cook@apple.com','+2345678901','Silicon Valley,USA'),
(003,'Elon Musk','elon.musk@spacex.com','+3456789012','Florida,USA'),
(004,'Shah Rukh Khan','iamsrk@redchillies.com','+4567890123','Mumbai,India'),
(005,'Amir Khan','ak1965@akflims.com','+5678901234','Mumbai,India'),
(006,'Ratan Tata','ratan.tata@tatatrusts.com','+6789012345','Mumbai,India')

set identity_insert clients off;
select * from clients;