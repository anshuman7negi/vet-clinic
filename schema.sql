/* Database schema to keep the structure of entire database. */

CREATE TABLE owners(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(30),
  age INTEGER
  );

   CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
 );

 ALTER TABLE animals DROP COLUMN species;

 ALTER TABLE animals
ADD COLUMN species_id INTEGER REFERENCES species(id);

ALTER TABLE animals
ADD COLUMN owner_id INTEGER REFERENCES owners(id);