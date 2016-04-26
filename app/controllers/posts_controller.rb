class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "PostsController#index found #{@posts.length} posts!"
    render :index
  end
end
