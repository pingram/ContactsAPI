class UsersController < ApplicationController
  def create
    user = User.new(params[:user])
    if user.save
      render :json => user
    else
      render :json => user.errors, :status => :unprocessable_entity
    end
  end

  def index
    render :json => User.all
  end
end
