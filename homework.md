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

* `rails generate controller posts index` - _create a posts index html, controller, and route_
* `rails generate model post title:string body:text` - _creates a model for a blog post with a title and a body_




## Rake commands

* `rake db:create` - _creates a new database_
* `rake routes` - _shows the routes that the app currently has_
* `rake db:migrate` - _migrates the database._
* `rake db:seed` - _seeds the database with our seed data_
* `rake routes` - _displays current server routes_
