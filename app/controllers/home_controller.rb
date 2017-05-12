class HomeController < ApplicationController
  def index
    @rifas = Rifa.all
  end
end
