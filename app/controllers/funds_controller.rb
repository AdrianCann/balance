class FundsController < ApplicationController
  def index
    @funds = Fund.all
    @fund = Fund.new
  end

  def create
    @fund = Fund.new(fund_params)
    if @fund.save
      flash[:success] = "Successful save"
      redirect_to funds_path
    else
      flash[:danger] = "Failure to save"
      render :index
    end
  end

  def update
    @fund = Fund.find(params[:id])

    if @fund.update(fund_params)
      flash[:success] = "Successful save"
      redirect_to funds_path
    else
      flash[:danger] = "Failure to save"
      render :index
    end
  end

  private

  def fund_params
    params.require(:fund).permit(:name, :ticker, :description)
  end
end
