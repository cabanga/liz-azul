class DashboardController < ApplicationController
  before_action :set_agrupamento, only: [
    :admin_agrupamento, 
    :primeira_seccao, 
    :segunda_seccao,
    :terceira_seccao,
    :quarta_seccao,
  ]

  def index
    if current_user.super_admin?
      redirect_to admin_manager_path 
    else
      @agrupamento = current_user.current_ag 
    end

  end

  def admin_manager
    
  end
  
  def primeira_seccao
    
  end
  
  def segunda_seccao
    
  end

  def terceira_seccao
    
  end

  def quarta_seccao
    
  end

  def admin_agrupamento
    session[:session_admin] = true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agrupamento
      @agrupamento = Agrupamento.find(params[:agrupamento_id])
    end
  
end
