class User < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {customer: 0, admin: 222}

end
