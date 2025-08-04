-- Seed tbl_collections
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed tbl_types
INSERT INTO tbl_types (type_name) VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Fairy'),
('Dragon'),
('Colorless');

-- Seed tbl_stages
INSERT INTO tbl_stages (stage_name) VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed tbl_cards
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resistance, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
) VALUES
(60, 'Pikachu', 'Mouse Pokémon. It stores electricity in its cheeks.', 'Thunder Shock', '30', 'Fighting', '', '1 Energy', 58, 1, 4, 1),
(80, 'Charmeleon', 'Flame Pokémon. It has a fiery tail.', 'Flamethrower', '50', 'Water', '', '2 Energy', 24, 1, 2, 2),
(40, 'Jigglypuff', 'Balloon Pokémon. It sings lullabies.', 'Sing', '0', 'Psychic', '', '1 Energy', 54, 2, 11, 1),
(70, 'Kabuto', 'Shellfish Pokémon. It is a fossil Pokémon.', 'Scratch', '30', 'Grass', '', '1 Energy', 50, 3, 6, 1),
(100, 'Blastoise', 'Shellfish Pokémon. It shoots water from its cannons.', 'Hydro Pump', '60+', 'Electric', '', '3 Energy', 2, 1, 3, 3);