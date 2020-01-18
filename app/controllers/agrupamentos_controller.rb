class AgrupamentosController < ApplicationController
  before_action :set_agrupamento, only: [:show, :edit, :update, :destroy]

  # GET /agrupamentos
  # GET /agrupamentos.json
  def index
    @agrupamentos = Agrupamento.all
  end

  # GET /agrupamentos/1
  # GET /agrupamentos/1.json
  def show
  end

  # GET /agrupamentos/new
  def new
    @agrupamento = Agrupamento.new
  end

  # GET /agrupamentos/1/edit
  def edit
  end

  # POST /agrupamentos
  # POST /agrupamentos.json
  def create
    @agrupamento = Agrupamento.new(agrupamento_params)

    respond_to do |format|
      if @agrupamento.save
        format.html { redirect_to @agrupamento, notice: 'Agrupamento was successfully created.' }
        format.json { render :show, status: :created, location: @agrupamento }
      else
        format.html { render :new }
        format.json { render json: @agrupamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agrupamentos/1
  # PATCH/PUT /agrupamentos/1.json
  def update
    respond_to do |format|
      if @agrupamento.update(agrupamento_params)
        format.html { redirect_to @agrupamento, notice: 'Agrupamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @agrupamento }
      else
        format.html { render :edit }
        format.json { render json: @agrupamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agrupamentos/1
  # DELETE /agrupamentos/1.json
  def destroy
    @agrupamento.destroy
    respond_to do |format|
      format.html { redirect_to agrupamentos_url, notice: 'Agrupamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agrupamento
      @agrupamento = Agrupamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agrupamento_params
      params.require(:agrupamento).permit(:nome, :numero, :lema, :regiao_id)
    end
end
