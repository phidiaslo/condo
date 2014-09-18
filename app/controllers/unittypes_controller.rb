class UnittypesController < ApplicationController
  before_action :set_unittype, only: [:show, :edit, :update, :destroy]

  # GET /unittypes
  def index
    @unittypes = Unittype.all
  end

  # GET /unittypes/1
  def show
  end

  # GET /unittypes/new
  def new
    @unittype = Unittype.new
  end

  # GET /unittypes/1/edit
  def edit
  end

  # POST /unittypes
  def create
    @unittype = Unittype.new(unittype_params)

    if @unittype.save
      redirect_to @unittype, notice: 'Unittype was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /unittypes/1
  def update
    if @unittype.update(unittype_params)
      redirect_to @unittype, notice: 'Unittype was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /unittypes/1
  def destroy
    @unittype.destroy
    redirect_to unittypes_url, notice: 'Unittype was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unittype
      @unittype = Unittype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unittype_params
      params.require(:unittype).permit(:name, :sqft, :property_name)
    end
end
