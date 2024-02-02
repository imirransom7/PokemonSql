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