# Setup the environment

This application requires:

- Ruby [2.2.\*, 2.3.*]
- Rails 5

**Using RVM**

If you're using RVM then you might want to run

> $ rvm use --create --ruby-version 2.3.0@gemdep

### Installation

To get rolling, start by copying config/database.yml.example into config/database.yml

> $ cp config/database.yml.example config/database.yml

And update the database configuration settings according to your environment, then bin/setup

> $ cd gemdep/<br>
> $ bin/setup

After setup finish run the server.

> $ rails server

run test.

> $ rspec
