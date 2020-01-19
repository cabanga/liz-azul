class Agrupamento < ApplicationRecord
  belongs_to :regiao
  has_many :escuteiros

  def lobitos
    scout_list = []
    scout_list = escuteiros.all.map{|escuteiro| (calc(escuteiro) <= 10) ? escuteiro : nil}
    scout_list.compact
  end

  def exploradores
    scout_list = []
    scout_list = escuteiros.all.map{|escuteiro| (calc(escuteiro) >= 11 && calc(escuteiro) <= 14) ? escuteiro : nil}
    scout_list.compact
  end

  def pioneiros
    scout_list = []
    scout_list = escuteiros.all.map{|escuteiro| (calc(escuteiro) >= 15 && calc(escuteiro) <= 17) ? escuteiro : nil}
    scout_list.compact
  end

  def caminheiros
    scout_list = []
    scout_list = escuteiros.all.map{|escuteiro| (calc(escuteiro) >= 18 && calc(escuteiro) <= 25) ? escuteiro : nil}
    scout_list.compact
  end

  def dirigentes
    scout_list = []
    scout_list = escuteiros.all.map{|escuteiro| (calc(escuteiro) >= 26) ? escuteiro : nil}
    scout_list.compact
  end

  def calc(escuteiro)
    Date.today.year - escuteiro.data_nascimento.year
  end
end
