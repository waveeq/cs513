/* DISH */

--ICV Dish duplicate ID
select id, count(id) as duplicateCount
from dish
group by id
having count(id)  > 1;

--ICV NULL Id check 
select * 
from dish 
where id is NULL;


--ICV Dish menu and times appeared.
select * from dish
where menus_appeared is NULL 
or times_appeared is NULL;


--ICV Dish evaluation of first_appeared occuring before last_appeared.
select * from dish
where cast(first_appeared as year) > cast(last_appeared as year) 
and last_appeared <> 0;

--ICV Dish evaluation for first_appeared and lasst_appeared between 1851 and 2021
select count(*) from dish as total_rows;
select count(*) from dish where (first_appeared between '1851' and '2021');
select count(*) from dish where (lasst_appeared between '1851' and '2021');

--ICV Dish evaluation, lowest_price should be less than or equal to highest_price.
select count(*) from dish where lowest_price > highest_price;


/* MENU */

--ICV Menu duplicate ID
select id, count(id) as duplicateCount
from menu
group by id
having count(id)  > 1;

--ICV Menu NULL ID evaluation
select count(*) 
from menu 
where id is NULL;

--ICV sponsor_clean NULL or Blank 
select * from menu where sponsor_clean is NULL or '';

--ICV page_count NULL or Blank 
select * from menu where page_count is NULL or '';



/* MENUPAGE */

--ICV MenuPage duplicate ID
select id, count(id) as duplicateCount
from MenuPage
group by id
having count(id)  > 1;

--ICV MenuPage NULL ID
select count(*) 
from MenuPage 
where id is NULL;

--ICV MenuPage page_number 0 and NULL check
select count(*) 
from page 
where page_number  is NULL
or page_number  = 0;


/* MENUITEM */

--ICV MenuItem duplicate ID
select id, count(id) as duplicateCount
from MenuItem
group by id
having count(id)  > 1;

--ICV MenuItem NULL ID
select count(*)
from MenuItem 
where id is NULL;

--ICV MenuItem NULL ID
select count(*) as xpos_violation
from MenuItem 
where xpos < 0 and xpos > 1;


--ICV MenuItem NULL ID
select count(*) as ypos_violation
from MenuItem 
where ypos < 0 and ypos > 1;
