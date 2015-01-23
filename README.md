# Salon ✂️

Salon is a website that helps you keep track of your stylists and their clients.

## Requirements

You're gonna need:
- Ruby
- Sinatra
- PostgreSQL

ProTip™—Install these gems:
- [sinatra](https://rubygems.org/gems/sinatra)
- [sinatra-contrib](https://rubygems.org/gems/sinatra-contrib)
- [pg](https://rubygems.org/gems/pg)

```
$ gem install sinatra sinatra-contrib pg
```

## Setup

You're gonna need a database called salon with two tables (stylists and clients).
Run the following in psql to make the magic happen:

```
# CREATE DATABASE salon;
# \c salon
# CREATE TABLE stylists (id serial, name varchar);
# CREATE TABLE clients (id serial, name varchar, stylist_id int);
```

## Credits

Salon is written and maintained by [David Zulaica](http://zulaica.info).

## License
GNU GPL v2.0
