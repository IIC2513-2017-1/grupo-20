class HomeController < ApplicationController

  def index
    @search = Rifa.search(params[:name_search], params[:premio_search],
                          params[:min_price_search],
                          params[:max_price_search],params[:date_search])

  end

  private
  def searches_params
    params.require(:rifa).permit(:name_search, :premio_search, :min_price_search, :max_price_search,
                                 :date_search)
  end
end
