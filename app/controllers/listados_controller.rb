class ListadosController < ApplicationController
  before_action :set_listado, only: %i[ show edit update destroy ]

  # GET /listados or /listados.json
  def index
    @listados = Listado.all
  end

  # GET /listados/1 or /listados/1.json
  def show
  end

  # GET /listados/new
  def new
    @listado = Listado.new
  end

  # GET /listados/1/edit
  def edit
  end

  # POST /listados or /listados.json
  def create
    @listado = Listado.new(listado_params)

    respond_to do |format|
      if @listado.save
        format.html { redirect_to @listado, notice: "Listado was successfully created." }
        format.json { render :show, status: :created, location: @listado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listados/1 or /listados/1.json
  def update
    respond_to do |format|
      if @listado.update(listado_params)
        format.html { redirect_to @listado, notice: "Listado was successfully updated." }
        format.json { render :show, status: :ok, location: @listado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @listado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listados/1 or /listados/1.json
  def destroy
    @listado.destroy
    respond_to do |format|
      format.html { redirect_to listados_url, notice: "Listado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listado
      @listado = Listado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listado_params
      params.require(:listado).permit(:departament_id, :employee, :equipment_id, :printer_id)
    end
end
