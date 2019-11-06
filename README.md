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
  ** rails webpacker:install:react
  ** rails generate react_on_rails:install
  ** foreman start -f Procfile.dev
* restore database
  ** pg_restore -U postgres -d dvdrental ~/Download/dvdrental.tar