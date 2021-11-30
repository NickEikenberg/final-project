# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## HOW IT WORKS

### USER AUTH

## Tutorial used: https://www.section.io/engineering-education/how-to-setup-user-authentication-from-scratch-with-rails-6/

- Generate user model with email and password
- Add null: false field to email in db/migrate/create_users for model level validation
- Include bcrypt in Gemfile for password encryption
- Bundle install
- Update users model with has_secure_password and validates field, including regex for the password
- rails db:migrate
