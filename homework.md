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

* `rails generate controller posts index` - this command generated a controller called posts_controller.rb then gave it method with the argument index
* `rails route` - told rails that the root route should use the index method in the Posts controller
* `rails generate model post title:string body:text` - created model and gave model 2 attributes: title, and body.
* `rails ...` - _YOUR DESCRIPTION_




## Rake commands

* `rake db:create` - created database for blog
* `rake db:migrate` - creates a database migration so the code will at the correct table to the database
