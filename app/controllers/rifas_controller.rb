class RifasController < ApplicationController
  before_action :set_rifa, only: [:show, :edit, :update, :destroy]

  # GET /rifas
  # GET /rifas.json
  def index
    @rifas = Rifa.all
  end

  # GET /rifas/1
  # GET /rifas/1.json
  def show
  end

  # GET /rifas/new
  def new
    @rifa = Rifa.new
  end

  # GET /rifas/1/edit
  def edit
  end

  # POST /rifas
  # POST /rifas.json
  def create
    @rifa = Rifa.new(rifa_params)

    respond_to do |format|
      if @rifa.save
        format.html { redirect_to @rifa, notice: 'Rifa was successfully created.' }
        format.json { render :show, status: :created, location: @rifa }
      else
        format.html { render :new }
        format.json { render json: @rifa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rifas/1
  # PATCH/PUT /rifas/1.json
  def update
    respond_to do |format|
      if @rifa.update(rifa_params)
        format.html { redirect_to @rifa, notice: 'Rifa was successfully updated.' }
        format.json { render :show, status: :ok, location: @rifa }
      else
        format.html { render :edit }
        format.json { render json: @rifa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rifas/1
  # DELETE /rifas/1.json
  def destroy
    @rifa.destroy
    respond_to do |format|
      format.html { redirect_to rifas_url, notice: 'Rifa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rifa
      @rifa = Rifa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rifa_params
      params.require(:rifa).permit(:fecha_inicio, :fecha_termino, :titulo, :r_id)
    end
end
