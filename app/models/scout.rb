class Scout < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :subscrytion_years

    enum identification_type:  { bilhete_de_identidade: 0, cedula_pessoal: 1, passaporte: 2 }

    before_create { self.reference_numer = generate_reference }
    before_update { self.reference_numer = generate_reference }

    def generate_reference
      letter_code = "AG11-"
      last_code = Scout.last
  
      if (last_code.blank?)
          return "#{letter_code}00001/#{Time.now.year}"
      else
          ref = last_code.reference_numer
          n = ref.to_s.split('')
  
          # Remove firsts
          n.shift
          n.shift
          n.shift
          n.shift
          n.shift
  
          #remove lasts
          n.pop
          n.pop
          n.pop
          n.pop
          n.pop
  
          n = n.join('').to_i
          n += 1
          return "#{letter_code}#{n.to_s.rjust(5, '0')}/#{Time.now.year}"
      end
    end


end
