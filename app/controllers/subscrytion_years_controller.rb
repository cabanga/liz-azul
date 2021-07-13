class SubscrytionYearsController < ApplicationController
  before_action :set_subscrytion_year, only: %i[ show edit update destroy ]

  # GET /subscrytion_years or /subscrytion_years.json
  def index
    @subscrytion_years = SubscrytionYear.all
  end

  # GET /subscrytion_years/1 or /subscrytion_years/1.json
  def show
  end

  # GET /subscrytion_years/new
  def new
    @subscrytion_year = SubscrytionYear.new
  end

  # GET /subscrytion_years/1/edit
  def edit
  end

  # POST /subscrytion_years or /subscrytion_years.json
  def create
    @subscrytion_year = SubscrytionYear.new(subscrytion_year_params)

    respond_to do |format|
      if @subscrytion_year.save
        format.html { redirect_to @subscrytion_year, notice: "Subscrytion year was successfully created." }
        format.json { render :show, status: :created, location: @subscrytion_year }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subscrytion_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscrytion_years/1 or /subscrytion_years/1.json
  def update
    respond_to do |format|
      if @subscrytion_year.update(subscrytion_year_params)
        format.html { redirect_to @subscrytion_year, notice: "Subscrytion year was successfully updated." }
        format.json { render :show, status: :ok, location: @subscrytion_year }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subscrytion_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscrytion_years/1 or /subscrytion_years/1.json
  def destroy
    @subscrytion_year.destroy
    respond_to do |format|
      format.html { redirect_to subscrytion_years_url, notice: "Subscrytion year was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscrytion_year
      @subscrytion_year = SubscrytionYear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscrytion_year_params
      params.require(:subscrytion_year).permit(:year_at, :scout_id, :section, :slug)
    end
end
