class DashboardController < ApplicationController
  before_action :set_agrupamento, only: [
    :admin_agrupamento, 
    :primeira_seccao, 
    :segunda_seccao,
    :terceira_seccao,
    :quarta_seccao,
  ]

  def index
    puts "=="*20
    p params
    puts "=="*20
  end

  def admin_seccoes
    
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
    #session[session_admin] = params[:session_admin].blank? ? flase : true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agrupamento
      @agrupamento = Agrupamento.find(params[:agrupamento_id])
    end
  
end
