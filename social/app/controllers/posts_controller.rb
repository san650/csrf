class PostsController < ApplicationController
  FEATURED_LIMIT = 3

  def index
    @posts = Post.ordered.limit(FEATURED_LIMIT)
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    redirect_to posts_index_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
