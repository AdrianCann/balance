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

  def show
    @portfolio = Portfolio.eager_load(fund_sections: :fund).find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(portfolio_params)
      flash[:success] = "Successful save"
      redirect_to portfolio_path(@portfolio)
    else
      flash[:danger] = "Failure to save"
      render :show
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :description)
  end
end
