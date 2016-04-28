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

'rails generate controller posts index' - creates a bunch of files app/controller & app/views & app/assets

'rails generate model post title:string body:text' - created two attributes for blog..title & body

'rails c' - creates a console on your terminal




## Rake commands
'rake db:create' - tells rails to create a new db for 'blog-app'
'rake routes' - displays all config routes
'rake db:seed' - the command informed me that I have 1 pending migration:   20160427233315 CreatePosts
