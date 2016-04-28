# homework submission

**You will submit this file, edited, as your homework**

* As you build your app, keep `homework.md` open.  
* Each time you run a new `rake ...` or `rails ...` command, jot it down in homework.md.  
* Describe what each command does.  If it has arguments, what do they mean?
  * An example is provided below.
* When you're done (even if you don't finish) submit a Pull Request.  Your PR should have just 1 changed file: `homework.md`.


## Rails commands

* `rails ...` - _YOUR DESCRIPTION_
* `rails ...` - _YOUR DESCRIPTION_

* `rails new blog -d postgresql` - tells rails to create a new app called 'blog'
* `-d postgresql` - tells rails that it should configure the app to use a Postgres database instead of the default.
* `rails s` - starts the rails server and will display page on localhost3000.
* `rails generate controller posts index` - rails will generate a bunch of files like:
                                          a new  app/controllers/posts_controller.rb
                                          a view app/views/posts/index.html.erb
* `rails generate model post title:string body:text` - created model with 2 attributes: title, and body.

## Rake commands

* `rake ...` - _YOUR DESCRIPTION_
* `rake ...` - _YOUR DESCRIPTION_

* `rake db:create` - tells rails to create the database our app will use.
* `rake routes` - rails is now mapping /posts/index to the PostsController's #index method. It uses the verb GET.
* `rake db:migrate` - alters structure of the database and generates schema.
* `rake db:seed` - runs the seed file.
