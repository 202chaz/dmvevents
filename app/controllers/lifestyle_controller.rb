class LifestyleController < ApplicationController
  def index
    @posts = Post.where(category:'lifestyle')
  end
end
