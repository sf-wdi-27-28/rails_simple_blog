# homework submission

**You will submit this file, edited, as your homework**

* As you build your app, keep `homework.md` open.  
* Each time you run a new `rake ...` or `rails ...` command, jot it down in homework.md.  
* Describe what each command does.  If it has arguments, what do they mean?
  * An example is provided below.
* When you're done (even if you don't finish) submit a Pull Request.  Your PR should have just 1 changed file: `homework.md`.


## Rails commands

* `rails new blog -d postgresql` - tells rails to create a new app called 'blog'
  * `-d postgresql` tells rails that it should configure the app to use a Postgres database instead of the default.

* `rails generate controller posts index` - will have rails generate files related to posts index resource

* `rails generate model post title:string body:text` - generates model
* `rails s` - runs the server





## Rake commands

* `rake db:create` - tells Rails to create the database our app will use. Otherwise we'll get an error: ActiveRecord::NoDatabaseError

* `rake routes` - lets you see the routes
* `rake db:seed` - to seed

* `rake db:migrate` - alters the db, changes some files
