class FundSectionsController < ApplicationController
  def create
    @fund_section = FundSection.new(fund_section_params)
    @fund_section.fund_id = fund.try(:id)
    if @fund_section.save
      flash[:success] = "Successful save"
    else
      flash[:danger] = "Failure to save"
    end
    redirect_to portfolio_path(id: @fund_section.portfolio_id)
  end

  private

  def fund
    Fund.find_by(ticker: ticker)
  end

  def ticker
    params[:ticker]
  end

  def fund_section_params
    params.require(:fund_section).permit(:portfolio_id, :shares)
  end
end
