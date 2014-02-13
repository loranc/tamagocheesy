class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @tamagotchi = @user.tamagotchi
    if @tamagotchi == nil
      redirect_to new_user_tamagotchi_path(@user, @tamagotchi)
    end
  end

  def update
  end

  def destroy
  end
end
