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

* `rails generate controller posts index` - _creates post_controller and adds index.html files and index method in index.html because index was specified at the end of the command_
* `rails server` - _starts up rails server_
* `rails generate model post title:string body:text` - _creates a post.rb file in app > models with a class of Post_





## Rake commands

* `rake routes` - _check the routes file for mapped routes_
* `rake db:migrate` - _alters the schema model. schema starts with nothing in it and migration added entries_
* `rake db:seed` - _runs the seed file and populates data_
