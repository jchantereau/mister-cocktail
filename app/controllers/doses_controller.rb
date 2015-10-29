class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create, :destroy ]

  def new
    @dose = @cocktail.doses.build
  end

  def create
    @dose = Review.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to restaurant_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    find_cocktail.delete
  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
