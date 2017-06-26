class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    if Rating.exists?({user_id: params[:id], rater_id: current_user.id})
      @rating = Rating.where({user_id: params[:id], rater_id: current_user.id}).first
      @rating.update_attributes(rating_params)
      @rating.save
      redirect_to user_path(params[:id])
    else
      @rating = Rating.new(rating_params)
      if @rating.save
        redirect_to user_path(params[:id])
      else
        redirect_to user_path(params[:id])
      end
    end
  end

  private
    def rating_params
      params.require(:rating).permit(:valoracion).merge({user_id: params[:id], rater_id: current_user.id})
    end
end
