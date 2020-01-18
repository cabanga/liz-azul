class RegioesController < ApplicationController
  before_action :set_regiao, only: [:show, :edit, :update, :destroy]

  # GET /regioes
  # GET /regioes.json
  def index
    @regioes = Regiao.all
  end

  # GET /regioes/1
  # GET /regioes/1.json
  def show
  end

  # GET /regioes/new
  def new
    @regiao = Regiao.new
  end

  # GET /regioes/1/edit
  def edit
  end

  # POST /regioes
  # POST /regioes.json
  def create
    @regiao = Regiao.new(regiao_params)

    respond_to do |format|
      if @regiao.save
        format.html { redirect_to @regiao, notice: 'Regiao was successfully created.' }
        format.json { render :show, status: :created, location: @regiao }
      else
        format.html { render :new }
        format.json { render json: @regiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regioes/1
  # PATCH/PUT /regioes/1.json
  def update
    respond_to do |format|
      if @regiao.update(regiao_params)
        format.html { redirect_to @regiao, notice: 'Regiao was successfully updated.' }
        format.json { render :show, status: :ok, location: @regiao }
      else
        format.html { render :edit }
        format.json { render json: @regiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regioes/1
  # DELETE /regioes/1.json
  def destroy
    @regiao.destroy
    respond_to do |format|
      format.html { redirect_to regioes_url, notice: 'Regiao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiao
      @regiao = Regiao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regiao_params
      params.require(:regiao).permit(:nome, :lema)
    end
end
