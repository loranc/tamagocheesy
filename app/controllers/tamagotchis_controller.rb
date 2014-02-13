class TamagotchisController < ApplicationController

  before_action :lookup_user, only: [:create, :new, :edit, :update, :show, :destroy]
  before_action :lookup_tamagotchi, only: [:show, :edit, :update, :destroy]

  def index
  end

  def create
    tamagotchi = @user.create_tamagotchi(tamagotchi_params)
    redirect_to user_tamagotchi_url(@user, tamagotchi)
  end

  def new
    @tamagotchi = Tamagotchi.new
  end

  def edit
  end

  def show
    redirect_to new_user_tamagotchi_url(@user, @tamagotchi) unless @tamagotchi
  end

  def update
    @tamagotchi.update_attributes(tamagotchi_params)
    redirect_to user_tamagotchi_url(@user, @tamagotchi)
  end

  def destroy
    @tamagotchi.destroy
    redirect_to user_url(@user)
  end

  private

  def tamagotchi_params
    params.require(:tamagotchi).permit(:name, :bio, :rating)
  end

  def lookup_user
    @user = User.find(params[:user_id])
  end

  def lookup_tamagotchi
    @tamagotchi = Tamagotchi.find(params[:id])
  end

end
