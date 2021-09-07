class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private


    def user_params
      params.require(:user).permit(:name, :introduction, :profile_image)
    end
end
