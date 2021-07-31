/* DATA PROFILING QUERIES -- 

   CHECKING FOR NULLS THAT DON'T VIOLATE DATA INTEGRITY 

*/

/* MENU */

/* compare sponsor and sponsor_clean */
select count(*) from menu where sponsor is NULL or sponsor = '';
select count(*) from menu where sponsor_clean is NULL or sponsor_clean = '';

select id, sponsor, sponsor_clean 
from menu 
where sponsor is not NULL and (sponsor_clean is NULL or sponsor_clean = '');

/* compare event and event_clean */
select count(*) from menu where event is NULL or event = '';
select count(*) from menu where event_clean is NULL or event_clean = '';

select id, event, event_clean 
from menu 
where event is not NULL and (event_clean is NULL or event_clean = '');

/* compare place and place_clean */
select count(*) from menu where place is NULL or place = '';
select count(*) from menu where place_clean is NULL or place_clean = '';

select id, place, place_clean 
from menu 
where place is not NULL and (place_clean is NULL or place_clean = '');

/* physical_description and physical_description_type */
select count(*) from menu where physical_description is NULL or physical_description = '';
select count(*) from menu where physical_description_type is NULL or physical_description_type = '';

select id, physical_description, physical_description_type 
from menu 
where physical_description is not NULL and (physical_description_type is NULL or physical_description_type = '');

/* occasion comparison */
select count(*) from menu where occasion is NULL or occasion = '';
select count(*) from menu where occasion_clean is NULL or occasion_clean = '';

select id, occasion, occasion_clean 
from menu 
where occasion is not NULL and (occasion_clean is NULL or occasion_clean = '');


/* location comparison */
select count(*) from menu where location is NULL or location = '';
select count(*) from menu where location_clean is NULL or location_clean = '';

select id, location, location_clean 
from menu 
where location is not NULL and (location_clean is NULL or location_clean = '');





/* DISH */
select count(*) from dish;
select count(*) from dish where name is NULL or name = '';
select count(*) from dish where description is NULL or description = '';
select count(*) from dish where first_appeared is NULL;
select count(*) from dish where last_appeared is NULL;
select count(*) from dish where lowest_price is NULL;
select count(*) from dish where highest_price is NULL;
select count(*) from dish where lowest_price is NULL and highest_price is NULL;

/* check that there are no null appearances */
select * from dish
where menus_appeared is NULL or times_appeared is NULL;


/* MENUPAGE */
select count(*) from menupage where page_number  = '0' or page_number is NULL;
select count(*) from menupage where full_height  is NULL;
select count(*) from menupage where full_width  is NULL;
select count(*) from menupage where uuid is NULL;

/* MENUITEM */
select count(*) from menuitem where created_at is NULL;
select count(*) from menuitem where updated_at is NULL;
select count(*) from menuitem where xpos is NULL;
select count(*) from menuitem where ypos is NULL;