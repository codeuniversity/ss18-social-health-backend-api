#README

Versions
Ruby: 2.4.2

Rails: 5.2.0.rc1

psql (PostgreSQL) 9.5.12

Database creation

Add /config/database.yml
With content:


development:
  default: &default
  adapter: postgresql
  encoding: unicode
  database: XXXXX-development
  pool: 5
  username: XXXXX
  password: XXXXX

test:
  default: &default
  adapter: postgresql
  encoding: unicode
  database: XXXXX-backend-test
  pool: 5
  username: XXXXX
  password: XXXXX

Database initialization
rails db:migrate


Create .env file and add Google Key and Secret from the Google API Console (Webclient) https://console.developers.google.com/apis/credentials

GOOGLE_KEY=
GOOGLE_SECRET=
