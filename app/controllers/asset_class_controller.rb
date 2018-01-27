class AssetClassController < ApplicationController
  def index
    @asset_classes = AssetClass.all
    @asset_class = AssetClass.new
  end

  def create
    @asset_class = AssetClass.new(asset_class_params)
    if @asset_class.save
      flash[:success] = "Successful save"
      redirect_to asset_class_index_path
    else
      @asset_classes = AssetClass.all
      flash[:danger] = "Failure to save"
      render :index
    end
  end

  private

  def asset_class_params
    params.require(:asset_class).permit(:name, :description)
  end
end
