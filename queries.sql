
-- Who was the last animal seen by William Tatcher?
SELECT a.name FROM animals a
JOIN visits v ON a.id = v.animal_id
JOIN vets vt ON v.vet_id = vt.id
WHERE vt.name = 'Vet William Tatcher'
ORDER BY v.visit_date DESC
LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(DISTINCT v.animal_id) AS num_animals
FROM visits v
JOIN vets vt ON v.vet_id = vt.id
WHERE vt.name = 'Vet Stephanie Mendez';

-- List all vets and their specialties, including vets with no specialties.
SELECT v.name, s.name AS specialty
FROM vets v
LEFT JOIN specializations sp ON v.id = sp.vet_id
LEFT JOIN species s ON sp.species_id = s.id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT a.name
FROM animals a
JOIN visits v ON a.id = v.animal_id
JOIN vets vt ON v.vet_id = vt.id
WHERE vt.name = 'Vet Stephanie Mendez'
  AND v.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

-- What animal has the most visits to vets?
SELECT a.name
FROM animals a
JOIN visits v ON a.id = v.animal_id
GROUP BY a.name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Who was Maisy Smith's first visit?
SELECT v.name AS vet_name, vs.visit_date
FROM vets v
JOIN visits vs ON v.id = vs.vet_id
JOIN animals a ON vs.animal_id = a.id
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Maisy Smith'
ORDER BY vs.visit_date ASC
LIMIT 1;

-- Details for the most recent visit: animal information, vet information, and date of visit.
SELECT a.name AS animal_name, vt.name AS vet_name, v.visit_date
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets vt ON v.vet_id = vt.id
ORDER BY v.visit_date DESC
LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(*) AS num_visits
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets vt ON v.vet_id = vt.id
LEFT JOIN specializations sp ON vt.id = sp.vet_id AND a.species_id = sp.species_id
WHERE sp.vet_id IS NULL;

-- What specialty should Maisy Smith consider getting? Look for the species she visits the most.
SELECT s.name AS specialty
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets vt ON v.vet_id = vt.id
JOIN species s ON a.species_id = s.id
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Maisy Smith'
GROUP BY s.name
ORDER BY COUNT(*) DESC
LIMIT 1;