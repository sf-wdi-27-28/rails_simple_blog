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

* `rails new example` - tells rails to create an app called "example"
* `rails generate controller post index` - tells rails to create a new controller that includes the view index.html and route
* `rails generate model post title: string body:text` - tells rails to create a new model with 2 attributes, title and body



## Rake commands

* `rake db:create` - tells rails to create the database our app will use. Otherwise we'll get an error: ActiveRecord::NoDatabaseError
* `rake rake` - tells rails to map post/index to use the PostController's #index
* `rake db:migrate` - alters the db, changes some files
* `rake db:seed` - tells rails to run the seed file
* `rake routes` - list the routes specified in routes.rb
