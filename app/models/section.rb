class Section < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :confirmations

end
