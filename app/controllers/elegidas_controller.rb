class ElegidasController < ApplicationController
  before_action :set_elegida, only: [:show, :edit, :update, :destroy]

  # GET /elegidas
  # GET /elegidas.json
  def index
    @elegidas = Elegida.all
  end

  # GET /elegidas/1
  # GET /elegidas/1.json
  def show
  end

  # GET /elegidas/new
  def new
    @elegida = Elegida.new
  end

  # GET /elegidas/1/edit
  def edit
  end

  # POST /elegidas
  # POST /elegidas.json
  def create
    @elegida = Elegida.new(elegida_params)

    respond_to do |format|
      if @elegida.save
        format.html { redirect_to @elegida, notice: 'Elegida was successfully created.' }
        format.json { render :show, status: :created, location: @elegida }
      else
        format.html { render :new }
        format.json { render json: @elegida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elegidas/1
  # PATCH/PUT /elegidas/1.json
  def update
    respond_to do |format|
      if @elegida.update(elegida_params)
        format.html { redirect_to @elegida, notice: 'Elegida was successfully updated.' }
        format.json { render :show, status: :ok, location: @elegida }
      else
        format.html { render :edit }
        format.json { render json: @elegida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elegidas/1
  # DELETE /elegidas/1.json
  def destroy
    @elegida.destroy
    respond_to do |format|
      format.html { redirect_to elegidas_url, notice: 'Elegida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elegida
      @elegida = Elegida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elegida_params
      params.require(:elegida).permit(:pregunta_id, :respuesta_id, :usuario_id)
    end
end
