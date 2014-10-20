class ResidentsController < ApplicationController
  def index
  	@residents = Resident.all
  end

  def show
  	@resident = Resident.find(params[:id])
  end

  def destroy
	@resident = Resident.find(params[:id])
    @resident.destroy

    if @resident.destroy
      redirect_to root_url, notice: "Resident deleted"
    end
  end
end