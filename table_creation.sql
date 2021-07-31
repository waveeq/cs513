CREATE TABLE Dish (
    id    INTEGER PRIMARY KEY,
    name  TEXT,
    main_ingredient  TEXT,
    main_ingredient_seafood  TEXT,
    main_ingredient_steak  TEXT,
    main_ingredient_chicken  TEXT,
    description TEXT,
    menus_appeared   INTEGER,
    times_appeared   INTEGER ,
    first_appeared   INTEGER,
    last_appeared    INTEGER,
    lowest_price     REAL,
    highest_price    REAL
)



CREATE TABLE MenuItem (
    id INTEGER PRIMARY KEY,
    menu_page_id INTEGER,
    price REAL,
    high_price REAL,
    dish_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    xpos REAL,
    ypos REAL,
    FOREIGN KEY(menu_page_id) REFERENCES MenuPage(id),
    FOREIGN KEY(dish_id) REFERENCES Dish(id)
)



CREATE TABLE MenuPage (
    id INTEGER PRIMARY KEY,
    menu_id INTEGER,
    page_number INTEGER,
    image_id INTEGER,
    full_height REAL,
    full_width REAL,
    uuid TEXT,
    FOREIGN KEY(menu_id) REFERENCES Menu(id)
)



CREATE TABLE Menu (
    id INTEGER PRIMARY KEY,
    name TEXT,
    sponsor TEXT,
    sponsor_clean TEXT,
    event TEXT,
    event_clean TEXT,
    venue TEXT,
    venue_clean TEXT,
    place TEXT,
    place_clean TEXT,
    physical_description TEXT,
    physical_description_type TEXT,
    physical_description_2 TEXT,
    physical_description_3 TEXT,
    physical_description_4 TEXT,
    physical_description_5 TEXT,
    physical_description_6 TEXT,
    physical_description_7 TEXT,
    occasion TEXT,
    occasion_clean TEXT,
    notes TEXT,
    call_number TEXT,
    keywords TEXT,
    language TEXT,
    date TEXT,
    location TEXT,
    location_clean TEXT,
    location_type TEXT,
    currency TEXT,
    currency_symbol TEXT,
    status TEXT,
    page_count INTEGER,
    dish_count INTEGER
)
