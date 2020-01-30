class ImovelController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  # GET /properties
  # GET /properties.json
  def index
  	@properties = Imovel.all
  end
  end
 
  # GET /cities/1
  # GET /cities/1.json
  def show
  end

   # GET /properties/new
  def new
    @imovel = Imovel.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @imovel = Imovel.new(imovel_params)

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to @imovel, notice: 'Imóvel criado com sucesso.' }
        format.json { render :show, status: :created, location: @imovel }
      else
        format.html { render :new }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @imovel.update(imovel_params)
        format.html { redirect_to @imovel, notice: 'Imovel was successfully updated.' }
        format.json { render :show, status: :ok, location: @imovel }
      else
        format.html { render :edit }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'Imovel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imovel
      @imovel = Imovel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imovel_params
      params.require(:imovel).permit(:name, :state)
    end
end
