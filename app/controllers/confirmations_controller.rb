class ConfirmationsController < ApplicationController
  before_action :set_confirmation, only: %i[ show edit update destroy ]
  before_action :set_scout, only: %i[ confirmation_scout ]

  # GET /confirmations or /confirmations.json
  def index
    @confirmations = Confirmation.all
  end

  def pending
    @scouts = Scout.all.select{|s| s.confirmations.blank?}
  end

  # GET /confirmations/1 or /confirmations/1.json
  def show
  end

  # GET /confirmations/new
  def new
    @confirmation = Confirmation.new
  end

  # GET /confirmations/1/edit
  def edit
  end

  def confirmation_scout
    @confirmation = Confirmation.new(scout_id: @scout.id)

  end

  # POST /confirmations or /confirmations.json
  def create
    @confirmation = Confirmation.new(confirmation_params)

    respond_to do |format|
      if @confirmation.save
        format.html { redirect_to confirmations_path, notice: "Confirmation was successfully created." }
        format.json { render :show, status: :created, location: @confirmation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmations/1 or /confirmations/1.json
  def update
    respond_to do |format|
      if @confirmation.update(confirmation_params)
        format.html { redirect_to confirmations_path, notice: "Confirmation was successfully updated." }
        format.json { render :show, status: :ok, location: @confirmation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmations/1 or /confirmations/1.json
  def destroy
    @confirmation.destroy
    respond_to do |format|
      format.html { redirect_to confirmations_url, notice: "Confirmation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_scout
      @scout = Scout.friendly.find(params[:id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmation
      @confirmation = Confirmation.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def confirmation_params
      params.require(:confirmation).permit(:scout_id, :slug, :year_at, :position_id, :section_id, :status)
    end
end
