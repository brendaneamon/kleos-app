class FiguresController < ApplicationController

  def index
    @figures = Figure.all
  end

  def new
    # AM: Nice! Looks like you implemented some logic in the view so that (hopefully) users would never be able to get to the create/edit forms in the first place.
    redirect_to root_url unless current_user
    @figure = Figure.new
  end

  def create
    redirect_to root_url unless current_user
    @figure = Figure.create!(figure_params)
    redirect_to figure_url(@figure)
  end

  def show
    @figure = Figure.find(params[:id])
  end

  def edit
    redirect_to root_url unless current_user
    @figure = Figure.find(params[:id])
  end

  def update
    redirect_to root_url unless current_user
    @figure = Figure.find(params[:id])
    @figure.update(figure_params)

    redirect_to figure_url(@figure)
  end

  def destroy
    redirect_to root_url unless current_user
    @figure = Figure.find(params[:id])
    @figure.destroy

    redirect_to figures_url
  end

  private
  def figure_params
    params.require(:figure).permit(:name, :greek_name, :epithets, :description, :is_mortal, :img_url, :allegiance, :home_id)
  end
end
