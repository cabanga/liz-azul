class EscuteirosController < ApplicationController
  before_action :set_escuteiro, only: [:show, :edit, :update, :destroy]
  before_action :set_agrupamento, only: [:new, :create, :edit, :update, :show]

  # GET /escuteiros
  # GET /escuteiros.json
  def index
    @escuteiros = Escuteiro.all
  end

  # GET /escuteiros/1
  # GET /escuteiros/1.json
  def show
  end

  # GET /escuteiros/new
  def new
    @escuteiro = Escuteiro.new
  end

  # GET /escuteiros/1/edit
  def edit
  end

  # POST /escuteiros
  # POST /escuteiros.json
  def create
    @escuteiro = Escuteiro.new(escuteiro_params)
    @escuteiro.agrupamento = @agrupamento

    respond_to do |format|
      if @escuteiro.save
        format.html { redirect_to agrupamento_admin_agrupamento_path(@agrupamento), notice: 'Escuteiro was successfully created.' }
      else
        puts "=="*20
        p @escuteiro.errors.full_messages
        puts "=="*20
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /escuteiros/1
  # PATCH/PUT /escuteiros/1.json
  def update
    respond_to do |format|
      if @escuteiro.update(escuteiro_params)
        format.html { redirect_to agrupamento_admin_agrupamento_path(@agrupamento), notice: 'Escuteiro was successfully created.' }
        format.json { render :show, status: :ok, location: @escuteiro }
      else
        format.html { render :edit }
        format.json { render json: @escuteiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escuteiros/1
  # DELETE /escuteiros/1.json
  def destroy
    @escuteiro.destroy
    respond_to do |format|
      format.html { redirect_to escuteiros_url, notice: 'Escuteiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escuteiro
      @escuteiro = Escuteiro.find(params[:id])
    end

    def set_agrupamento
      @agrupamento = Agrupamento.find(params[:agrupamento_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def escuteiro_params
      params.require(:escuteiro).permit(:nome, :data_nascimento, :contacto, :referencia, :agrupamento_id)
    end
end
