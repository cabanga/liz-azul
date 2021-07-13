class SubscrytionYear < ApplicationRecord
  extend FriendlyId
  friendly_id :created_at, use: :slugged

  belongs_to :scout
end
