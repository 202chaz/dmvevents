class MixtapesController < ApplicationController
  def index
    @posts = Post.where(category:'mixtape')
  end
end
