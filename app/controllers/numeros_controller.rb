class NumerosController < ApplicationController
  def new
    @numero = Numero.new
    @rifas = Rifa.find(params[:rifa_id])
  end
  def create
    @numero = Numero.new(numero_params)
    if @numero.save
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user), alert: 'No puedes comprar este numero.'
    end
  end

  private
  def numero_params
    params.require(:numero).permit(:number).merge({rifa_id: params[:rifa_id], user_id: current_user.id})
  end
end
