class HomeController < ApplicationController
  def index
    @featured_post = Post.where(featured: true)
    @latest_news = Post.where(category:"news").limit(6).order('created_at DESC')
    @latest_music = Post.where(category:"music").limit(6).order('created_at DESC')
    @latest_videos = Post.where(category:"videos").limit(6).order('created_at DESC')
    @latest_lifestyle = Post.where(category:"lifestyle").limit(6).order('created_at DESC')
  end
end
