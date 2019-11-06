# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : 2.5.3

* Rails version : 6.0.3

* React : 16

* Database : Postgres

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# note
* describe table : \d table_name or \d+ table_name
# dvdrental
* react_on_rails version : 11.3.0
  * rails webpacker:install:react
  * rails generate react_on_rails:install
  * foreman start -f Procfile.dev
* restore database
  * pg_restore -U postgres -d dvdrental ~/Download/dvdrental.tar
* drop table in rails
  * rails db:migrate:down VERSION=20191106043234
* clone table languages:
  * insert into languages(name, last_update, created_at, updated_at) select name , last_update, now(), now() from language;
* clone table categories
  * insert into categories(name, last_update, created_at, updated_at) select name , last_update, now(), now() from category;
* clone table actors
  * insert into actors(first_name, last_name, last_update, created_at, updated_at) select first_name, last_name, last_update, now(), now() from actor;
* clone table countries
  * insert into countries(name,  last_update, created_at, updated_at) select country, last_update, now(), now() from country;
* clone table cities:
  * insert into cities(name, country_id,  last_update, created_at, updated_at) select city, country_id, last_update, now(), now() from city;
* clone table addresses:
  * insert into addresses(address, address2, district, city_id, postal_code, phone, last_update, created_at, updated_at) select address, address2, district,city_id, postal_code, phone, last_update, now(), now() from address;
* clone table stores:
  * insert into stores(manager_staff_id, address_id, last_update, created_at, updated_at) select manager_staff_id, address_id, last_update, now(), now() from store
* clone table inventories:
  * insert into inventories(film_id, store_id, last_update, created_at, updated_at) select film_id, store_id, last_update, now(), now() from inventory;
* clone table film_categories
  * insert into film_categories(film_id, category_id, last_update, created_at, updated_at) select film_id, category_id, last_update, now(), now() from film_category;
* clone table film_actors
  * insert into film_actors(actor_id, film_id, last_update, created_at, updated_at) select actor_id, film_id, last_update, now(), now() from film_actor;
* clone table staff
  * insert into staffs (first_name, last_name, username, password, address_id, email, store_id, active, last_update, picture, created_at, updated_at) select first_name, last_name username, password, address_id, email, store_id, active, last_update, picture, now(), now()  from staff ;