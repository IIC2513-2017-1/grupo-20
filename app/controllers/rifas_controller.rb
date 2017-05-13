class RifasController < ApplicationController
  def index
    @rifas = Rifa.all
  end
  def show
    @rifas = Rifa.find(params[:id])
  end
  def new
    @rifa = Rifa.new
  end
  def create
    @rifa = Rifa.new(rifa_params)
    if @rifa.save
      redirect_to rifa_prizes_path(@rifa.id)
    else
      render 'new'
    end
  end
  private
    def rifa_params
      params.require(:rifa).permit(:title, :price, :numbers).merge({user_id: current_user.id, owner: current_user.name})
    end
end
