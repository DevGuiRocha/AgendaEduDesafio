class PoliticosController < ApplicationController
  before_action :set_politico, only: %i[ show edit update destroy ]

  # GET /politicos or /politicos.json
  def index
    @politicos = Politico.all
  end

  # GET /politicos/1 or /politicos/1.json
  def show
  end

  # GET /politicos/new
  def new
    @politico = Politico.new
  end

  # GET /politicos/1/edit
  def edit
  end

  # POST /politicos or /politicos.json
  def create
    @politico = Politico.new(politico_params)

    respond_to do |format|
      if @politico.save
        format.html { redirect_to politico_url(@politico), notice: "Politico was successfully created." }
        format.json { render :show, status: :created, location: @politico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @politico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politicos/1 or /politicos/1.json
  def update
    respond_to do |format|
      if @politico.update(politico_params)
        format.html { redirect_to politico_url(@politico), notice: "Politico was successfully updated." }
        format.json { render :show, status: :ok, location: @politico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @politico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politicos/1 or /politicos/1.json
  def destroy
    @politico.destroy

    respond_to do |format|
      format.html { redirect_to politicos_url, notice: "Politico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politico
      @politico = Politico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def politico_params
      params.require(:politico).permit(:nome, :cpf, :sguf, :sgpartido, :id_cadastro)
    end
end
