class NewsController < ApplicationController
  def index
    @posts = Post.where(category:'news')
  end
end
