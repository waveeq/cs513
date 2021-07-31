

/* DISH */

/* Check that each id is unique */
select id, count(id) as cnt
from dish
group by id
having count(id)  > 1;

/* check that there are no null ids */
select * from dish where id is NULL;

/* check that there are no null appearances */
select * from dish
where menus_appeared is NULL or times_appeared is NULL;

select * from dish
where cast(first_appeared as year) > cast(last_appeared as year) and last_appeared <> '0';

select * from dish where (first_appeared between '1851' and '2021');
select * from dish where (last_appeared between '1851' and '2021');


select * from dish where lowest_price > highest_price;

select count(*) from dish where lowest_price < 0;
select count(*) from dish where highest_price < 0;


/* MENU */

select id, count(id) as cnt
from menu
group by id
having count(id)  > 1;

select * from menu where id is NULL;

select * from menu where page_count is NULL or '';

/* MENU PAGE */

select id, count(id) as cnt
from menupage
group by id
having count(id)  > 1;


select * from menupage where id is NULL;
select * from menupage where menu_id is NULL;

/* ITEM */

select id, count(id) as cnt
from menuitem
group by id
having count(id)  > 1;

select * from menuitem where id is NULL;

select *
from menuitem where dish_id is NULL;

select * from menuitem where updated_at < created_at;

select * from menuitem where price < 0;

select * from menuitem where xpos < 0 and xpos > 1;
select * from menuitem where ypos < 0 and xpos > 1;

