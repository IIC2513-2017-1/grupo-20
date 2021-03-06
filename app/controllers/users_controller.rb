class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
    @user.avatar = params[:file]
  end
  def create
    @user = User.new(user_params)
    if @user.save and params[:mail_confirmation].present? and params[:password_confirmation].present?
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
    @user = User.find(params[:id])
    @numeros = Numero.all
    @rating = Rating.new
    @valoracion = Rating.where({user_id: params[:id]}).average(:valoracion)
    @followers = Follow.where(follower_id: params[:id]).count()
    @following = Follow.where({following_id: params[:id]}).count()
    @creadas = Rifa.where(user_id: params[:id]).count()
    if @valoracion
      @valoracion = @valoracion.round(2)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def own
    @user = User.find(params[:id])
    render layout: false
  end

  def bought
    @user = User.find(params[:id])
    render layout: false
  end

  def processing
    @user = User.find(params[:id])
    render layout: false
  end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :mail, :password, :avatar, :mail_confirmation, :password_confirmation)
  end
end
