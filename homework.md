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

* `rails s` - starts server on localhost
* `rails generate controller posts index` - create controller, view as well as other files and folders for 'posts' in the app
* `rails generate model post title:string body:text` - creates a model in the DB to create new posts with the title as a string and the body as a longer string.




## Rake commands

* `rake db:create` - tells rails to create a database for app
* `rake routes` - updates routes to respective controllers
* `rake db:migrate` - updates DB to take in model and schema for 'post' creation
* `rake db:seed` - runs seed file to update DB with seed data
