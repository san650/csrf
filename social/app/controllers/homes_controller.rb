class HomesController < ApplicationController
  def show
    redirect_to posts_index_url
  end
end
