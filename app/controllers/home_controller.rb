class HomeController < ApplicationController

  def index
    params.inspect
    @search = Rifa.search(params[:name_search], params[:premio_search],
                          params[:min_price_search],
                          params[:max_price_search],params[:date_search])
    flash[:notice] = "Post successfully created"


    if params[:order].present?
      @search = @search.sort_option(params[:order])
    end

  end

  private
  def searches_params
    params.require(:rifa).permit(:name_search, :premio_search, :min_price_search, :max_price_search,
                                 :date_search, :order)
  end
  def sorts_params
    params.require(:rifa).permit(:order)
  end
end
