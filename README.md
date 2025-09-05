# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


damit kann ich den rails server ausführen: bundle exec rails server
mit  bundle exec rails console kann man das irb für rails öffnen

damit kann man die Datenbank erweitern: rails generate migration add_name_to_users name:string (name_to_user -> kann durch was anderes ersetzt werden genau wie "name:string") anschliessend muss man aber auch noch db:migrate ausführen, zwischen den Wörtern und dem Doppelpunkt ist kein Abstand