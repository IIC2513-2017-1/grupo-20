class RifasController < ApplicationController
  def index
    @rifas = Rifa.all
  end
  def show
    @rifas = Rifa.find(params[:id])
    @comments = Comment.where({rifa_id: params[:id]})
    @comment = Comment.new
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
  def edit
    @rifa = Rifa.find(params[:id])
  end
  def update
    @rifa = Rifa.find(params[:id])
    if @rifa.update_attributes(rifa_params)
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @rifa = Rifa.find(params[:id])
    @numeros = Numero.where({rifa_id: @rifa.id})
    @rifa.destroy
    for n in @numeros
      n.destroy
    end
    redirect_to user_path(params[:id])
  end

  def draw
    @rifas = Rifa.find(params[:id])
    @winner_number = Numero.where({rifa_id: params[:id]}).sample
    @winner = User.find(@winner_number.user_id)
    NotifyWinnerMailer.notify_winner_email(@winner, @rifas, @winner_number).deliver_later
  end

  private
    def rifa_params
      params.require(:rifa).permit(:title, :price, :numbers, :end_date).merge({user_id: current_user.id, owner: current_user.name})
    end
end
