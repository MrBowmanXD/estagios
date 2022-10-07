class EstagiosController < ApplicationController
  before_action :set_estagio, only: %i[ show edit update destroy ]

  # GET /estagios or /estagios.json
  def index
    @estagios = Estagio.all
  end

  # GET /estagios/1 or /estagios/1.json
  def show
  end

  # GET /estagios/new
  def new
    @estagio = Estagio.new
  end

  # GET /estagios/1/edit
  def edit
  end

  # POST /estagios or /estagios.json
  def create
    @estagio = Estagio.new(estagio_params)

    respond_to do |format|
      if @estagio.save
        format.html { redirect_to estagio_url(@estagio), notice: "Estagio was successfully created." }
        format.json { render :show, status: :created, location: @estagio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estagio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estagios/1 or /estagios/1.json
  def update
    respond_to do |format|
      if @estagio.update(estagio_params)
        format.html { redirect_to estagio_url(@estagio), notice: "Estagio was successfully updated." }
        format.json { render :show, status: :ok, location: @estagio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estagio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estagios/1 or /estagios/1.json
  def destroy
    @estagio.destroy

    respond_to do |format|
      format.html { redirect_to estagios_url, notice: "Estagio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estagio
      @estagio = Estagio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estagio_params
      params.require(:estagio).permit(:titulo, :descricao, :localidade)
    end
end
