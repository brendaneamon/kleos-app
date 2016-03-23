class HomesController < ApplicationController

  def index
    @homes = Home.all
  end

  def new
    redirect_to root_url unless current_user
    @home = Home.new
  end

  def create
    redirect_to root_url unless current_user
    @home = Home.create!(home_params)
    redirect_to home_url(@home)
  end

  def show
    @home = Home.find(params[:id])
  end

  def edit
    redirect_to root_url unless current_user
    @home = Home.find(params[:id])
  end

  def update
    redirect_to root_url unless current_user
    @home = Home.find(params[:id])
    @home.update(home_params)

    redirect_to home_url(@home)
  end

  def destroy
    redirect_to root_url unless current_user
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to homes_url
  end

  private
  def home_params
    params.require(:home).permit(:name, :greek_name, :description, :img_url)
  end
end
