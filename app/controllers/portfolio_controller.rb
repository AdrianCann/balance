class PortfolioController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:success] = "Success"
      redirect_to portfolio_index_path
    else
      @portfolios = Portfolio.all
      flash[:error] = "Fail"
      render :index
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :description)
  end
end
