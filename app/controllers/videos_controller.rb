class VideosController < ApplicationController
  def index
    @posts = Post.where(category:'videos')
  end
end
