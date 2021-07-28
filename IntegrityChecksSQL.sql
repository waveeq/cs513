

/* DISH */

select id, count(id) as cnt
from dish
group by id
having count(id)  > 1;


select * from dish where id is NULL;

select * from dish
where menus_appeared is NULL or times_appeared is NULL ;

select * from dish
where cast(first_appeared as year) > cast(last_appeared as year) and last_appeared <> '0';


select * from dish where (first_appeared between '1851' and '2021');
select * from dish where (lasst_appeared between '1851' and '2021');

select * from dish where lowest_price > highest_price;


/* MENU */

select id, count(id) as cnt
from menu
group by id
having count(id)  > 1;

select * from menu where id is NULL;

select * from menu where sponsor_clean is NULL or '';
select * from menu where page_count is NULL or '';



/* MENU PAGE */

select id, count(id) as cnt
from page
group by id
having count(id)  > 1;


select * from page where id is NULL;

select * from page where page_number  = '0';
select * from page where page_number  is NULL;


select * from page where created_at > updated_at;


/* ITEM */

select id, count(id) as cnt
from item
group by id
having count(id)  > 1;

select * from item where id is NULL;

select * from item where updated_at < created_at;

select * from item where xpos < 0 and xpos > 1;
select * from item where ypos < 0 and xpos > 1;


