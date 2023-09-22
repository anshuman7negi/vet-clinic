/* Database schema to keep the structure of entire database. */

  -- Create the vets table
CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  date_of_graduation DATE
);

--Create the specializations join table
CREATE TABLE specializations (
  vet_id INTEGER REFERENCES vets(id),
  species_id INTEGER REFERENCES species(id),
  PRIMARY KEY (vet_id, species_id)
);

-- Create the visits join table
CREATE TABLE visits (
  animal_id INTEGER REFERENCES animals(id),
  vet_id INTEGER REFERENCES vets(id),
  visit_date DATE,
  PRIMARY KEY (animal_id, vet_id, visit_date)
);