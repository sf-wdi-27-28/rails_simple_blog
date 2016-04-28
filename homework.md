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

* `rails ...` - _YOUR DESCRIPTION_
* `rails ...` - _YOUR DESCRIPTION_

###############
* `rails generate model post title:string body:text` - created the model (format) of blog posts
###############



## Rake commands

* `rake ...` - _YOUR DESCRIPTION_
* `rake ...` - _YOUR DESCRIPTION_

###############
* `rake routes` - maps the index to PostsController
* `rake db:migrate` - migrates everything to the same part in the db so that everything is in the same commit
###############
