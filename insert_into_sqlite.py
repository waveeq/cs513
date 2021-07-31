import pandas as pd
import sqlite3

DATABASE_FILENAME = "NYPL_Menu_Dataset_updated.db"

dish = pd.read_csv('Dish_Cleaned.csv')
print(dish.columns, dish.dtypes)

connection = sqlite3.connect(DATABASE_FILENAME)


create_dish = """
CREATE TABLE Dish (
    id    INTEGER PRIMARY KEY,
    name  TEXT,
    main_ingredient  TEXT,
    main_ingredient_seafood  TEXT,
    main_ingredient_steak  TEXT,
    main_ingredient_chicken  TEXT,
    menus_appeared   INTEGER,
    times_appeared   INTEGER ,
    first_appeared   INTEGER,
    last_appeared    INTEGER,
    lowest_price     REAL,
    highest_price    REAL
)
"""

create_menu_item = """
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
"""

create_menu_page = """
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
"""

create_menu = """
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
"""

db = connection.cursor()
db.execute(create_menu)
db.execute(create_dish)
db.execute(create_menu_page)
db.execute(create_menu_item)
connection.commit()

dish.to_sql('Dish', connection, if_exists='append', index=False)
connection.commit()



menu = pd.read_csv('Menu-Cleaned.csv')
print(menu.columns, menu.dtypes)
menu = menu.rename(columns={'physical_description 2': 'physical_description_2',
    'physical_description 3': 'physical_description_3',
    'physical_description 4': 'physical_description_4',
    'physical_description 5': 'physical_description_5',
    'physical_description 6': 'physical_description_6',
    'physical_description 7': 'physical_description_7',})
menu.to_sql('Menu', connection, if_exists='append', index=False)

connection.commit()

menu_item = pd.read_csv('raw_data/MenuItem.csv')
print(menu_item.columns, menu_item.dtypes)
menu_item.to_sql('MenuItem', connection, if_exists='append', index=False)

connection.commit()

menu_page = pd.read_csv('raw_data/MenuPage.csv')
print(menu_page.columns, menu_page.dtypes)
menu_page.to_sql('MenuPage', connection, if_exists='append', index=False)

connection.close()


