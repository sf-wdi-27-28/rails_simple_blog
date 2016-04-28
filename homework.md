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
* rails generate controller posts index
generates controller Posts and view posts
* rails generate model post title:string body:text
generates model "post" with title and body
## Rake commands
* rake db:create
creates a new database
* rake routes
lists the routes specified in routes.rb
* rake db:migrate
migrates the db
* rake db:seed
seeds the database
* rake routes
lists the routes specified in routes.rb
* rake routes
lists the routes specified in routes.rb
get posts#new, posts#create, posts
