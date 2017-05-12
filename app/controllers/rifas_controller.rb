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
      redirect_to rifas_path
    else
      render 'new'
    end
  end
  private
    def rifa_params
      params.require(:rifa).permit(:owner, :user_id, :price, :numbers)
    end
end
