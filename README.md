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