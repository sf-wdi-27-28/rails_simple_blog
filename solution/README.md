## Create a rails app called 'blog'

First go to your wdi development directory, then:

```sh
rails new blog -d postgresql
```
> `rails new example` tells rails to create an app called "example"

> `-d postgresql` tells rails we want to use Postgres instead of sqlite.

## Commit your first commits 

```sh
cd blog
git init
git add .
git commit -m "ran rails new blog"
```

> We did `git init` because rails doesn't assume we're going to use git.
> 
> Note that rails added a `.gitignore` file for you!


## Create the first model for your blog posts

We're going to give this model 3 attributes: title, body and date.

```sh
rails g model post title:string body:text date:datetime
```

> What's the difference between `string` and `text`?  Just length.

#### Always migrate your database after creating a new model

Creating a model also creates a **database migration**, or code that will add the correct table to the database.  We need to run the migration and then check in the model with its migration and the `schema.rb` all together.  This should be one commit because they are all part of creating that model/table.


```sh
rails db:migrate
```

> Feel free to look at your migration first before migrating.  Check db/migrate/In the future you may even need to edit it before you migrate and commit.