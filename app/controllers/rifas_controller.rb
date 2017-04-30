class RifasController < ApplicationController
  def index
    @rifas = Rifa.all
  end
end
