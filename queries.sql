/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals where name like '%mon';
SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * FROM animals WHERE neutered = TRUE AND escape_attempt < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempt FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
