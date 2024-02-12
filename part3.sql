--1:
SELECT pokemons.name AS 'Pokemon Name', types.name AS 'Primary Type'
FROM pokemons
INNER JOIN types
ON pokemons.primary_type=types.id;

--2:
SELECT pokemons.name AS 'Pokemon Name', types.name AS 'Secondary Type'
FROM pokemons
INNER JOIN types
ON pokemons.secondary_type=types.id
WHERE pokemons.name = 'Rufflet';

--3:
SELECT pokemons.name AS 'Pokemon Names'
FROM pokemons
LEFT JOIN pokemon_trainer
ON pokemons.id=pokemon_trainer.pokemon_id
WHERE pokemon_trainer.trainerID = 303;

--4:
SELECT COUNT(pokemons.secondary_type) AS 'Pokemon with Secondary Type Poison'
FROM pokemons
INNER JOIN types
ON pokemons.secondary_type=types.id
WHERE types.name = 'Poison';

-- Or one could use this query; getting the info by using the id of the secondary type instead:
SELECT COUNT(pokemons.secondary_type) AS 'Pokemon with Secondary Type Poison'
FROM pokemons
INNER JOIN types
ON pokemons.secondary_type=types.id
WHERE types.id = 7;

--5:
SELECT COUNT(pokemons.id) AS 'Number of Pokemon', types.name AS 'Primary Types'
FROM pokemons
INNER JOIN types
ON pokemons.primary_type=types.id
GROUP BY primary_type
ORDER BY 'Number of Pokemon' DESC;

--6:
SELECT COUNT(pokemons.id) AS 'Number of Pokemon', pokemon_trainer.trainerID AS Trainer
FROM pokemons
LEFT JOIN pokemon_trainer
ON pokemons.id=pokemon_trainer.pokemon_id
WHERE pokemon_trainer.pokelevel = 100
GROUP BY Trainer;

--7:
SELECT COUNT(pokemon_id) AS 'Number of Pokemon', trainerID
FROM pokemon_trainer
GROUP BY trainerId
HAVING Count(trainerID) = 1;