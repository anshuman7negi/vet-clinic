/*Queries that provide answers to the questions from all projects.*/

delete from animals where date_of_birth > '2022-01-01';
DELETE 1

savepoint sp3;
SAVEPOINT

update animals set weight_kg = weight_kg * -1;
UPDATE 10

rollback to sp3;
ROLLBACK

update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
UPDATE 4
commit;

SELECT COUNT(*) AS total_animals FROM animals;

select count(*) as animals_never_escape from animals where escape_attempts = 0;

select avg(weight_kg) as average_weight from animals; 

SELECT neutered, SUM(escape_attempt) AS total_escape_attempt FROM animals GROUP BY neutered ORDER BY total_escape_attempt DESC LIMIT 1;

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;

SELECT species, AVG(escape_attempt) AS avg_escape_attempt FROM (SELECT species, COUNT(*) AS escape_attempt FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species) AS subquery GROUP BY species;
