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

* `rails generate controller posts index` - creates a posts index with setup files for the controller, posts_controller.rb & index.thml.erb
* `rails generate model post title:string body:text` - will create our model for our blog with a title and text body




## Rake commands

* `rake routes` - rails maps /post/index to the PostsController's #index method using GET, also check the paths
* `rake db:seed` - this seeded the database with hardcoded data
* `rake routes` - to see URI pattern
* `rake routes` - to pull get and post for post,index and post create

* post_params = params.require(:post).permit(:title, :body) - security params

<!-- this will create a new form then link it into controllers and view -->
* <h1>Write a new blog post</h1>

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

* Sometimes we call <% ... %>, clown-hats. And, <%= ... %> is crying-clown-hats. The important thing to know is that in crying-clown-hats the output of the ruby inside is rendered into the HTML of the page.
