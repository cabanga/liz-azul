class UserAdmin < ApplicationRecord
  belongs_to :user
  belongs_to :agrupamento
end
