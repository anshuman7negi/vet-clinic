/* Populate database with sample data. */

INSERT INTO vets (name, age, date_of_graduation)
VALUES
    ('Vet William Tatcher', 45, '2000-04-23'),
    ('Vet Maisy Smith', 26, '2019-01-17'),
    ('Vet Stephanie Mendez', 64, '1981-05-04'),
    ('Vet Jack Harkness', 38, '2008-06-08');


-- Insert the data for specialties:
INSERT INTO specializations (vet_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'Vet William Tatcher'), (SELECT id FROM species WHERE name = 'Pokemon'));

INSERT INTO specializations (vet_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Digimon')),
       ((SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Pokemon'));

INSERT INTO specializations (vet_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), (SELECT id FROM species WHERE name = 'Digimon'));


INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-05-24');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-07-22');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-02-02');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-01-05'),
       ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-03-08'),
       ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-05-14');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2021-05-04');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-02-24');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-12-21'),
       ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-08-10'),
       ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2021-04-07');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2019-09-29');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-10-03'),
       ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-11-04');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-01-24'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-05-15'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-02-27'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-08-03');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-05-24');

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2021-01-11');