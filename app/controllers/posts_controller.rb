class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "PostsController#index found #{@posts.length} posts!"
    render :index
  end

  def new
    # assign an empty and blank Post to use in our view
    @post = Post.new
    render :new # this is optional
  end


  def create
    post_params = params.require(:post).permit(:title, :body)

    post = Post.new(post_params)

    if post.save
      redirect_to posts_path # go back to /posts index page
    else
      render :new # in case of error, re-render the '/posts/new' page
    end
  end


end
