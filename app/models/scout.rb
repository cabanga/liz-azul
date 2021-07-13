class Scout < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    has_many :subscrytion_years
    
    enum identification_type:  { bilhete_de_identidade: 0, cedula_pessoal: 1, passaporte: 2 }

end
