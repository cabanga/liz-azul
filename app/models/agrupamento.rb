class Agrupamento < ApplicationRecord
  belongs_to :regiao
  has_many :escuteiros

  def lobitos
    lobinhos = []
    lobinhos = escuteiros.all.map{|escuteiro| calc(escuteiro) <= 10 ? escuteiro : nil}
    lobinhos.compact
  end

  def exploradores
    escuteiros.all.map{|escuteiro| calc(escuteiro) >= 10 && calc(escuteiro) <= 13 }
  end

  def pioneiros
    escuteiros.all.map{|escuteiro| calc(escuteiro) >= 14 && calc(escuteiro) <= 17 }
  end

  def caminheiros
    escuteiros.all.map{|escuteiro| calc(escuteiro) >= 18 && calc(escuteiro) <= 25 }
  end


  def calc(escuteiro)
    Date.today.year - escuteiro.data_nascimento.year
  end
end
