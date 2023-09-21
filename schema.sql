/* Database schema to keep the structure of entire database. */

 create table animals (
 id int primary key not null,
 name varchar(20),
 date_of_birth date,
 escape_attempt int not null,
 neutered boolean,
 weight_kg decimal
 );
