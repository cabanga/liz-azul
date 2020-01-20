class Escuteiro < ApplicationRecord
  belongs_to :agrupamento

  after_create :insert_referencia

  def insert_referencia
    #self.referencia = gerar_referencia
    #self.save
  end




end
