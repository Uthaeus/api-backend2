class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:user_current]
  respond_to :json
  def index
    @meetups = Meetup.all.order("created_at DESC").limit(3)
    @posts = Post.all.order("created_at DESC").limit(3)

    render json: {meetups: @meetups, posts: @posts}, include: :user
  end

  def user_current
    render json: current_user
  end
end
