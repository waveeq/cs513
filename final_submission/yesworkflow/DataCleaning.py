# @begin NYPL_Menu_Data  @desc Data cleaning workflow for NYPL set
# @in Menu.csv  @uri file://data/Menu.csv
# @in Dish.csv  @uri file://data/Dish.csv
# @in MenuItem.csv  @uri file://data/MenuItem.csv
# @in MenuPage.csv  @uri file://data/MenuPage.csv

#     @begin OpenRefine_MenuClean  @desc OpenRefine to clean Menu.csv
#     @in Menu.csv  @uri file://data/Menu.csv
#     @out Menu-Cleaned.csv  @uri file://data/clean/Menu-Cleaned.csv
#     @end OpenRefine_MenuClean

#     @begin OpenRefine_DishClean  @desc OpenRefine to clean Dish.csv
#     @in Dish.csv  @uri file://data/Dish.csv
#     @out Dish-Cleaned.csv  @uri file://data/clean/Dish-Cleaned.csv
#     @end OpenRefine_DishClean

#     @begin OpenRefine_MenuItemClean  @desc OpenRefine to MenuItem.csv
#     @in MenuItem.csv  @uri file://data/MenuItem.csv
#     @out MenuItem-Cleaned.csv  @uri file://data/clean/MenuItem-Cleaned.csv
#     @end OpenRefine_MenuItemClean

#     @begin OpenRefine_MenuPageClean  @desc OpenRefine to MenuPage.csv
#     @in MenuPage.csv  @uri file://data/MenuPage.csv
#     @out MenuPage-Cleaned.csv  @uri file://data/clean/MenuPage-Cleaned.csv
#     @end OpenRefine_MenuPageClean

#     @begin SQL_Load_Menu  @desc Use insert_into_sqlite.py to load Menu-Cleaned.csv into MENU table
#     @in Menu-Cleaned.csv  @uri file://data/clean/Menu-Cleaned.csv
#     @param insert_into_sqlite.py
#     @out MENU  @uri sqlite://database.db/MENU
#     @end SQL_Load_Menu

#     @begin SQL_Load_Dish  @desc Use insert_into_sqlite.py to load Dish-Cleaned.csv into table DISH
#     @in Dish-Cleaned.csv  @uri file://data/clean/Dish-Cleaned.csv
#     @param insert_into_sqlite.py
#     @out DISH  @uri sqlite://database.db/DISH
#     @end SQL_Load_Dish

#     @begin SQL_Load_MenuItem  @desc Use insert_into_sqlite.py to load MenuItem-Cleaned.csv into table MENU_ITEM
#     @in MenuItem-Cleaned.csv  @uri file://data/clean/MenuItem-Cleaned.csv
#     @param insert_into_sqlite.py
#     @out MENU_ITEM  @uri sqlite://database.db/MENU_ITEM
#     @end SQL_Load_MenuItem

#     @begin SQL_Load_MenuPage  @desc Use insert_into_sqlite.py to load MenuPage-Cleaned.csv into table MENU_PAGE
#     @in MenuPage-Cleaned.csv  @uri file://data/clean/MenuPage-Cleaned.csv
#     @param insert_into_sqlite.py
#     @out MENU_PAGE  @uri sqlite://database.db/MENU_PAGE
#     @end SQL_Load_MenuPage

#     @begin SQLConstraintsCheck  @desc Use SQL to check integrity constraints and functional dependencies
#     @in MENU  @uri sqlite://database.db/MENU
#     @in DISH  @uri sqlite://database.db/DISH
#     @in MENU_ITEM  @uri sqlite://database.db/MENU_PAGE
#     @in MENU_PAGE  @uri sqlite://database.db/MENU_ITEM
#     @param IntegrityConstraintsANDFunctionalDependenciesScript
#     @out MENU_FINAL  @uri sqlite://database.db/MENU_FINAL
#     @out DISH_FINAL  @uri sqlite://database.db/DISH_FINAL
#     @out MENU_ITEM_FINAL  @uri sqlite://database.db/MENU_ITEM_FINAL
#     @out MENU_PAGE_FINAL  @uri sqlite://database.db/MENU_PAGE_FINAL
#     @end SQLConstraintsCheck
# @out MENU_FINAL  @uri sqlite://database.db/MENU_FINAL
# @out DISH_FINAL  @uri sqlite://database.db/DISH_FINAL
# @out MENU_ITEM_FINAL  @uri sqlite://database.db/MENU_ITEM_FINAL
# @out MENU_PAGE_FINAL  @uri sqlite://database.db/MENU_PAGE_FINAL
# @end NYPL_Menu_Data
