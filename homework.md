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

* `rails new blog -d postgresql` - _We are asking rails to use Postgres (instead of sqlite) to make a new app called "blog"_
* `rails s` - _Ran to start the server_
* `rails generate controller posts index` - _Ran to generate and invoke a series of files_
* `rails generate model post title:string body:text` _Ran this to create a place to store blog posts - a model with two attributes title & body_




## Rake commands

* `rake db: create` - _Creates the database our app will use_
* `rake routes` - _Ran to confirm URI is mapped to 'posts#index'_
* `rake db:migrate` - _Ran to alter the database_
* `rake db:seed` - _Ran the seed file_
* `rake routes` - _Checking routes to see what information I have now that I have added!_
