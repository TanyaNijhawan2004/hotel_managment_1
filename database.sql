CREATE DATABASE info;

create table customer(
    cust_id serial Primary Key,
    Name char(30),
    email varchar(80),
    address varchar(100),
    contact int
);

create table room(
    room_id serial primary key,
    description varchar(100),
    cost int,
    booking_id serial foreign key 

);

create table employee(
    emp_id serial Primary Key ,
    name varchar(30),
    emp_type varchar(30)
);
  
create table has(
    cust_id serial foreign key ,
    booking_id serial foreign key, 

);
create table payment(
    payment_id serial primary key ,
    payment_date DATE Primary Key , 
    amount int,
    payment_type varchar(10),
    payment_detail varchar(20),
    cust_id serial foreign key 
);

create table booking(
    booking_id serial primary key , 
    booking_desc varchar(30),
    type varchar(30)
);