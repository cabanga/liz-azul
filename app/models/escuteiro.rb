class Escuteiro < ApplicationRecord
  belongs_to :agrupamento

  after_create :insert_referencia

  def insert_referencia
    self.referencia = gerar_referencia
    self.save
  end

  def gerar_referencia
    letra = "ANG"
    ultimo_escuteiro = Escuteiro.last

    if (ultimo_escuteiro.nil?)
      return "#{letra}000001-#{Time.now.year}"
    else
      ref = ultimo_escuteiro.referencia
      n = ref.to_s.split('')
      n.pop
      n.pop
      n.pop
      n.pop
      n.pop
      n.shift
      n = n.join('').to_i
      n += 1
      return "#{letra}#{n.to_s.rjust(6, '0')}-#{Time.now.year}"
    end
  end


end
