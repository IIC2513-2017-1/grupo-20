class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to user_path(params[:id])
    else
      redirect_to user_path(params[:id])
    end
  end

  private
    def rating_params
      params.require(:rating).permit(:valoracion).merge({user_id: params[:id]})
    end
end
