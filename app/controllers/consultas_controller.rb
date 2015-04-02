class ConsultasController < ApplicationController
  before_action :set_consulta, only: [:show, :edit, :update, :destroy]
  before_action :list_medicos, only: [:new, :edit]
  before_action :list_pacientes, only: [:new, :edit]

  respond_to :html, :js

  # GET /consultas
  # GET /consultas.json
  def index
    @consultas = Consulta.all
  end

  # GET /consultas/1
  # GET /consultas/1.json
  def show
  end

  # GET /consultas/new
  def new
    @consulta = Consulta.new
  end

  # GET /consultas/1/edit
  def edit
  end

  # POST /consultas
  # POST /consultas.json
  def create
    @consultas = Consulta.all
    @consulta = Consulta.create(consulta_params)
  end

  # PATCH/PUT /consultas/1
  # PATCH/PUT /consultas/1.json
  def update
    respond_to do |format|
      if @consulta.update(consulta_params)
        format.html { redirect_to @consulta, notice: 'Consulta was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulta }
      else
        format.html { render :edit }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @consulta = Consulta.find(params[:consulta_id])
  end

  # DESTROY/consultas/1
  # DESTROY/consultas/1.json
  def destroy
    @consultas = Consulta.all
    @consulta = Consulta.find(params[:id])
    @consulta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta
      @consulta = Consulta.find(params[:id])
    end

    def list_medicos
      @medicos = Medico.all.map{ |m| [ m.nome, m.id ] }
    end

    def list_pacientes
      @pacientes = Paciente.all.map{ |p| [ p.nome, p.id ] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulta_params
      params.require(:consulta).permit(:data, :hora, :medico_id, :paciente_id)
    end
end
