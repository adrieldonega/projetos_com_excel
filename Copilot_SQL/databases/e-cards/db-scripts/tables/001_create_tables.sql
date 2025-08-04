CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(60) NOT NULL,
    release_date DATE,
    total_cards_in_collection SMALLINT
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp SMALLINT,
    name VARCHAR(100) NOT NULL,
    info TEXT,
    attack VARCHAR(50),
    damage VARCHAR(10),
    weak VARCHAR(20),
    resistance VARCHAR(20),
    retreat VARCHAR(10),
    card_number_in_collection SMALLINT,
    collection_id INTEGER,
    type_id INTEGER,
    stage_id INTEGER,
    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (type_id) REFERENCES tbl_types(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (stage_id) REFERENCES tbl_stages(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);