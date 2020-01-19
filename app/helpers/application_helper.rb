module ApplicationHelper
    def calc_idade(escuteiro)
        Date.today.year - escuteiro.data_nascimento.year
    end
end
