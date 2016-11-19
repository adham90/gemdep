# Setup the environment

This application requires:

- Ruby [2.2.\*, 2.3.*]
- Rails 5

**Using RVM**

If you're using RVM then you might want to run

```bash
$ rvm use --create --ruby-version 2.3.0@gemdep
```

### Installation

Update the database configuration settings according to your environment, then run `bin/setup`.

```bash
$ cd gemdep
$ bin/setup
```

After `bin/setup` finishes, run the server.

```bash
$ rails server
```

run test.

```bash
$ rspec
```
