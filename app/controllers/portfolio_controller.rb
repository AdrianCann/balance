class PortfolioController < ApplicationController
  def index
    @portfolio = Portfolio.new
    @portfolios = Portfolio.all
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:success] = "Successful save"
      redirect_to portfolio_index_path
    else
      @portfolios = Portfolio.all
      flash[:danger] = "Failure to save"
      render :index
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :description)
  end
end
