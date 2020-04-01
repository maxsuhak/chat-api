## Available Scripts

In the project directory, you can run:

### `docker-compose up --build`

Builds the app

### `docker-compose run web rails db:create`
### `docker-compose run web rails db:migrate`

Set up the DB

### `docker-compose run web rspec spec/`

Run rspec tests

### `docker-compose run web rake middleware`

What middleware your Rails app is using

### `docker-compose run web rake secret`

Generate devise secret key


### `cp .env.template .env`

Create a local .env file for your config vars

## Notes:

Front-end is located here: https://github.com/maxsuhak/chat
