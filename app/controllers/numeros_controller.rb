class NumerosController < ApplicationController
  def new
    @numero = Numero.new
    @rifas = Rifa.find(params[:rifa_id])
    @comprados = Array.new
    compras = Numero.where({rifa_id: params[:rifa_id]})
    for c in compras
      @comprados << c.number
    end

  end
  def create
    numero_params.inspect
    params.inspect
    @numero = Numero.new({number: params[:num_id], rifa_id: params[:rifa_id], user_id: current_user.id})
    @rifas = Rifa.find(params[:rifa_id])
    p @numero
    p @rifas

    if @numero.save
      @rifas.numbers = @rifas.numbers - 1
      @rifas.save
      redirect_voto '/rifas/' + @rifas.id.to_s + "/numeros/new", notice: "Compra exitosa, espera por la autorizacion del admin."
    else
      redirect_to '/rifas/' + @rifas.id.to_s + "/numeros/new", alert: 'No puedes comprar este numero.'
    end
  end

  def aprove
    @numero = Numero.find(params[:id])
    @numero.aproved = true
    if @numero.save
      TransactionApprovedMailer.transaction_approved_email(@numero).deliver_later
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user), alert: 'No se pudo aprobar'
    end
  end

  private
  def numero_params
    params.merge({rifa_id: params[:rifa_id], user_id: current_user.id, aproved: false, number: params[:num_id]})
  end
end
