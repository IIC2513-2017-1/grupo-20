class PrizesController < ApplicationController
  def index
    @prizes = Prize.where(rifa_id: params[:rifa_id])
  end
  def show
    @prizes = Prize.find(params[:id])
  end
  def new
    @prize = Prize.new
  end
  def create
    @prize = Prize.new(prize_params)
    if @prize.save
      redirect_to rifa_prizes_path
    else
      render 'new'
    end
  end
  private
    def prize_params
      params.require(:prize).permit(:name).merge({rifa_id: params[:rifa_id]})
    end
end
