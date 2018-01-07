class MusicController < ApplicationController
  def index
    @posts = Post.where(category:'music')
  end
end
