class BulletinsController < ApplicationController
  before_action :set_bulletin, only: [:show, :edit, :update, :destroy]
  before_filter :auth_user!, only: [:show]
  before_filter :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
 
  # GET /bulletins
  def index
    @bulletins = Bulletin.all
  end

  # GET /bulletins/1
  def show
  end

  # GET /bulletins/new
  def new
    @bulletin = Bulletin.new
  end

  # GET /bulletins/1/edit
  def edit
  end

  # POST /bulletins
  def create
    @bulletin = Bulletin.new(bulletin_params)

    if @bulletin.save
      redirect_to @bulletin, notice: 'Bulletin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bulletins/1
  def update
    if @bulletin.update(bulletin_params)
      redirect_to @bulletin, notice: 'Bulletin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bulletins/1
  def destroy
    @bulletin.destroy
    redirect_to bulletins_url, notice: 'Bulletin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletin
      @bulletin = Bulletin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bulletin_params
      params.require(:bulletin).permit(:post_to, :subject_title, :content)
    end
end
