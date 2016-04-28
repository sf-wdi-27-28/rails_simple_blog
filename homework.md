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
* rails new blog -d postgresql -"creates a new rails file 'blog' and tells
    rails to use postgres"
* rails s -"turns server on"
* rails generate controller posts index -"creates starter files/code for
    posts"  
* rails generate model post title:string body:text -"creates model folder
    with starter post file"



## Rake commands

* `rake ...` - _YOUR DESCRIPTION_
* `rake ...` - _YOUR DESCRIPTION_
* rake db:create -"creates the data base the app will use"
* rake routes -"shows all the routes"
* rake db:migrate -"it updates the db with the new table/files/models"
* rake db:seed -"seeding the seed file into the db"
