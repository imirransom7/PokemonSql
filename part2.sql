-- 1:
SELECT name
FROM types;

-- 2:
SELECT name
FROM pokemons
WHERE id = 45;

-- 3:
SELECT COUNT(*)
FROM pokemons;

-- 4
SELECT COUNT(*)
FROM types;

--5
SELECT COUNT(secondary_type)
FROM pokemons;

--  A better solution would be this one
SELECT COUNT(secondary_type)
FROM pokemons
WHERE secondary_types IS NOT NULL;