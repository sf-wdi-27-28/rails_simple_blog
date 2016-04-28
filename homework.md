# homework submission

**You will submit this file, edited, as your homework**

* As you build your app, keep `homework.md` open.  
* Each time you run a new `rake ...` or `rails ...` command, jot it down in homework.md.  
* Describe what each command does.  If it has arguments, what do they mean?
  * An example is provided below.
* When you're done (even if you don't finish) submit a Pull Request.  Your PR should have just 1 changed file: `homework.md`.


## Rails commands

* `rails new blog -d postgresql`: tells rails to create a new app called 'blog'
* `-d postgresql` tells rails that it should configure the app to use a Postgres database instead of the default.

* `rails s`: starts the localhost server
* `rails generate controller posts index`:invokes & creates new controllers & .html files
* `rails generate model post title:string body:text`: store blog posts with Title & body
* `rails c`: use model from terminal //Post.create(title: 'first post', body: 'Hello!')





## Rake commands

* `rake db:create`: tells Rails to create the database our app will use. Otherwise we'll get an error: ActiveRecord::NoDatabaseError
* `rake routes`: rails is now mapping /posts/index to the PostsController's #index method. It uses the verb GET.
* `rake db:migrate`: migrates database after creating a new model
* `rake db:seed`: run seed file
