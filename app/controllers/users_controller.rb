class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :show]
  
  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = @user.posts
  end


  # GET /posts/1/edit
  def edit
  end

  private
    def set_user
     @user =  User.find(params[:id])
    end
end
