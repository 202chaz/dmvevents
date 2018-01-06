class HomeController < ApplicationController
  def index
    @featured_post = Post.where(featured: true)
    @latest_news = Post.where(category:"news").limit(6)
  end
end
