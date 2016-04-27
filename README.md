# Blog - Read

We're going to use rails to create a simple blog app.  As you go through these instructions:

* Carefully read each instruction.
* Be mindful of spelling.
* Commit your changes as you go.

#### Submission instructions

You'll be creating your rails app in another directory - **NOT** inside this repo.  

* As you build your app, keep `homework.md` open.  
* Each time you run a new `rake ...` or `rails ...` command, jot it down in homework.md.  
* Describe what each command does.  If it has arguments, what do they mean?   
* When you're done (even if you don't finish) submit a Pull Request.  Your PR should have just 1 changed file: `homework.md`.

Note: Rails has a very large spell-book; it comes with a **lot** of built-in commands and helpers which can be tough to remember.  **You may want to write these down in your notes as well.**



## Create a rails app called 'blog'

First go to your wdi development directory, then:

```sh
rails new blog -d postgresql
```
This might take a minute...

> `rails new example` tells rails to create an app called "example"

> `-d postgresql` tells rails we want to use Postgres instead of sqlite.

#### Commit your first commits 

```sh
cd blog
rake db:create
git init
git add .
git commit -m "ran rails new blog"
```

> We did `git init` because rails doesn't assume we're going to use git.
> 
> Note that rails added a `.gitignore` file for you!
>
> `rake db:create` tells Rails to create the database our app will use.  Otherwise we'll get an error: _ActiveRecord::NoDatabaseError_

#### Test your server

Run `rails s` to start the rails server, then visit localhost:3000.  You should see a default page.


## Create the PostsController and views

We're going to use "Posts" as the resource for our app.  Let's start with a controller.

```sh
rails generate controller posts index
```

<details>
<summary>Rails will generate a whole bunch of files here.</summary>
```sh
     create  app/controllers/posts_controller.rb
       route  get 'posts/index'
      invoke  erb
      create    app/views/posts
      create    app/views/posts/index.html.erb
      invoke  test_unit
      create    test/controllers/posts_controller_test.rb
      invoke  helper
      create    app/helpers/posts_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/posts.coffee
      invoke    scss
      create      app/assets/stylesheets/posts.scss
```
</details>

In particular you'll notice that it created:

* a new `app/controllers/posts_controller.rb` 
* a view `app/views/posts/index.html.erb`.

Open up `app/controllers/posts_controller.rb` you should see an index method (empty).  

> If we hadn't specifed `index` at the end of the command rails would not have added the index method, nor created the index view and route.

#### Configure a new root route

Rails also made a change to our routes.  If you run `rake routes` you can see that rails is now mapping `/posts/index` to the PostsController's `#index` method.  It uses the verb GET.

Let's change the routes so that PostsController#index serves the root route (`localhost:3000/) of our app.

1. Open `config/routes.rb`
1. Change the line that says `get 'posts/index'` 
                     to say: `root 'posts#index'`.
1. Run `rake routes` and check that the URI `/` or `localhost:3000/` is now mapped to `posts#index`.
1. Refresh the page at `localhost:3000`.  You should see a very boring "Posts#index" header that matches the html in `/app/views/posts/index.html.erb`

> The `#` means _method_ in Ruby.  With `posts#index` we told rails that the root route should use the **index method** in the PostsController.

#### Commit the new files

We've created a controller and a view and their associated files.
Commit your work.



## Create the first model for your blog posts


We need to store our blog posts somewhere, right? We're going to give this model 2 attributes: title, and body.

```sh
rails generate model post title:string body:text
```

> What's the difference between `string` and `text`?  Just length.

#### Always migrate your database after creating a new model

Creating a model also creates a **database migration**, or code that will add the correct table to the database.  We need to run the migration to alter the database. The model, migration and schema.rb change should all be in one git commit because they are all part of creating that model/table.


```sh
rake db:migrate
```

> Feel free to look at your migration first before migrating.  Check `db/migrate/*`  
> In the future you may even need to edit it before you migrate and commit.

> At this point you can use your model from the rails console `rails c`.  `Post.create('title: first post', body: 'yay!')`


#### Commit your changes

<details>
<summary>Click here to see the files changed in this round.</summary>
<pre>
	app/models/post.rb
	db/migrate/
	db/schema.rb
	test/fixtures/posts.yml
	test/models/post_test.rb
</pre>
</details>


```sh
git status
git add .
git commit -m "Added Post model"
```

## Connect it all together

In this step we'll display a post on the page using the controller to get the data from the model.

#### First we need some data
We don't have any way to write blog posts yet so let's add a little data to our database using the database seed file.

Add these lines to the bottom of your `db/seeds.rb` file:

```rb
Post.create(title: 'My first Post', body: 'At long last I have created a blog in rails!')
Post.create(title: 'MVC', body: "Model + View + Controller == <3")

puts "Seed complete!"
```

Now we need to run the seed file.  Run:

```sh
rake db:seed
```

#### Controller index route: Finding all the posts

Open up `app/controllers/posts_controller.rb`: 
Edit the index method to look like:

```rb
  def index
    @posts = Post.all
    puts "PostsController#index found #{@posts.length} posts!"
    render :index
  end
```

Now if you visit `localhost:3000` again and then look in the terminal where `rails server` is running, you should be able to find the text: 
`PostsController#index found 2 posts!`.  
> You might have to scroll up a bit; look for `Post Load (0.2ms)  SELECT "posts".* FROM "posts"` in **BOLD**.
 
Rails is calling the code in PostsController#index whenever someone requests the root route!  

#### Edit the view

At this point you have your controller using the model to get the posts from the database.  Now we need to display those on the page.

Open the view in `app/views/posts/index.html.erb`; replace it's contents with:

```erb
<h1>My Blog Posts</h1>

<% @posts.each do |post| %>
  <h2><%= post.title %></h2>
  <p><%= post.body %></h2>
<% end %>
```

Then refresh your page.  You should see your posts on the page instead.



#### Commit your changes

Quickly, commit all the changes!
Take a look at the work you did in this section.  See if you can see how things are wired up.  

* When a request comes in, which piece of code is first involved?
* What do you think `Post.all` does?


> <details><summary>How did we know we could use **@posts** in the view?</summary>  Rails takes the instance variables we set in our **controller actions** and makes them available in the **view** that was **render**ed by the action.</details>

> <details><summary>`render :index` in the controller is actually optional!</summary>  If you don't include a render command Rails will automagically guess that we want to render the `views/posts/index.html.erb` file by looking at the method name (`index`) and the controller name `PostsController`.</details>


> <details><summary>WTH is a `<%=`?!</summary>Rails, or rather **erb** uses these for templating similar to the `{{ }}` in handlebars.  You can stick Ruby code inside of them!   
> Sometimes we call `<% ... %>`, _clown-hats_.  And, `<%= ... %>` is _crying-clown-hats_.  The important thing to know is that in _crying-clown-hats_ the output of the ruby inside is rendered into the HTML of the page.
> </details>


# Blog - Create

We currently have one route in our app that serves all of our blog posts.  _Buuuuut_ we don't have any way to write blog posts without editing our seed file.

```sh
$ rake routes
Prefix Verb URI Pattern Controller#Action
  root GET  /           posts#index
```

Let's add a page where we can type our new blog posts.  
For this we're going to need to add two routes bringing us to a total of 3.

| Verb | URI        | Controller#Action |
|------|------------|-------------------|
| GET  | /          | posts#index       |
| GET  | /posts/new | posts#new         |
| POST | /posts     | posts#create      |

We might also consider having:

| Verb | URI        | Controller#Action |
|------|------------|-------------------|
| GET  | /posts       | posts#index       |

It's a little duplicative but its also a little more RESTful and we can basically do it for free.


## Add routes

1. Open up `config/routes.rb.
1. Add the following routes:
	```rb
	  # /posts/new
	  get 'posts/new', to: 'posts#new', as: 'new_post'
	
	  # /posts
	  get 'posts', to: 'posts#index'
	  post 'posts', to: 'posts#create'
	
	```
1. Now if you run `rake routes` again you should see the new routes.

> `to: 'posts#create'` means _map this route to the **PostsController** **create** method._

> `as: 'new_post'` assigns a name to this route.  Rails gives us methods like `new_post_url` based on these names that we can use later to refer to the URL.  It's common to use `new_RESOURCE` as the name here.
> <details><summary>Why didn't we specify an `as: 'posts'` for the others?</summary>  If you run rake routes you can see that Rails automagically assigned the correct name `posts`. </details>

## Add the controller methods

If you were to try to visit `GET /posts/new` or `POST /posts` right now you'd see an error.  That's because we're missing the methods needed to handle these routes in our controller.   


Let's go into our `app/controllers/posts_controller.rb` and add the two new methods we need.  

<details><summary>Wait, you mean 3 new methods, right?</summary>
Nope, we mapped both the `GET /` and `GET /posts` routes to the same controller method: `posts#index`.
</details>


#### Let's do `PostsController#new` first

In `app/controllers/posts_controller.rb` add the following method:

```rb
  def new
    # assign an empty, un-saved Post instance to use in our view
    @post = Post.new
    render :new # this is optional
  end
```

#### `new` view

Create a new file for the view `app/views/posts/new.html.erb`.

Add the following:

```erb
<h1>Write a new blog post</h1>

<%= form_for(@post) do |f| %>

  <div class="field">
    <%= f.label :title %><br>
    <%= f.text_field :title %>
  </div>
  <div class="field">
    <%= f.label :body %><br>
    <%= f.text_area :body, rows: 15, cols: 100 %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>

<% end %>

<%= link_to 'Back', posts_path %>
```

You should now be able to visit [http://localhost:3000/posts/new](http://localhost:3000/posts/new).  Submitting the form though will result in an error.

* What method gets called when you submit the form?  (

#### `PostsController#create`

Let's handle the submitted form.  We know that it POSTs to `/posts` and that `POST /posts` is handled by `PostsController#create`.  We configured that in our router.  (Run `rake routes` if you're uncertain.)

Open the controller up again and let's add the create method.

```rb
  def create
    post_params = params.require(:post).permit(:title, :body)

    post = Post.new(post_params)

    if post.save
      redirect_to posts_path # go back to /posts index page
    else
      render :new # in case of error, re-render the '/posts/new' page
    end
  end
```

The above code does everything you need.  It takes the form data from the params, it creates a new Post instance and saves it to the database and finally it redirects back to the `/posts/` route.

<details><summary>Why can't we just do `params.title` and `params.body`?</summary>Rails encourages the use of what's called "strong parameters" for security reasons.  Since we might have attributes on our models that we don't want to let a user change we specify which attributes are permitted thusly:  `params.require(:post).permit(:title, :body)`
</details>

#### Commit your changes

You've added the ability to create new posts and display them on your blog.
Commit your changes!



## Wrap-up

#### Submission

**Submit `homework.md` as a pull-request.**

Rails comes with a **lot** of built-in commands and helpers which can be hard to remember.  **You may want to write these down in your notes as well.**


#### Stretch

1. On your own, edit the index view adding a link `<%= link_to _________ %>` to link to the new page.  Try using `rake routes`.

1. Figure out how to delete a post.  (You'll need a `PostsController#destroy`) and a link like `<%= link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } %>`