class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[ show edit update destroy ]

  # GET /consulta or /consulta.json
  def index
    @consultum = Consultum.all
  end

  # GET /consulta/1 or /consulta/1.json
  def show

  end

  # GET /consulta/new
  def new
    @consultum = Consultum.new
    @medicos = Medico.all.map { |medico| [medico.primeiro_nome + medico.ultimo_nome, medico.id] }
    @pacientes = Paciente.all.map { |paciente| [paciente.primeiro_nome + paciente.ultimo_nome, paciente.id] }
    @consultum.build_medico
  end

  # GET /consulta/1/edit
  def edit
  end

  # POST /consulta or /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)
    @medicos = Medico.all.map { |medico| [medico.primeiro_nome + medico.ultimo_nome, medico.id] }
    @pacientes = Paciente.all.map { |paciente| [paciente.primeiro_nome + paciente.ultimo_nome, paciente.id] }

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to consultum_url, notice: "Consulta was successfully created." }
        format.json { render :show, status: :created, location: @consultum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta/1 or /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { redirect_to consultum_url(@consultum), notice: "Consultum was successfully updated." }
        format.json { render :show, status: :ok, location: @consultum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1 or /consulta/1.json
  def destroy
    @consultum.destroy

    respond_to do |format|
      format.html { redirect_to consultum_url, notice: "Consultum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consultum
    @consultum = Consultum.find(params[:id])

  end

  # Only allow a list of trusted parameters through.
  def consultum_params
    params.require(:consultum).permit(:data, :horario, :medico_id, :paciente_id)
  end

  def medico_params
    params.require(:medico).permit(:primeiro_nome, :ultimo_nome, :cpf, :email, :especialidade, :numero_do_crm)
  end
end
