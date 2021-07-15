class Confirmation < ApplicationRecord
  extend FriendlyId
  friendly_id :created_at, use: :slugged

  belongs_to :scout
  belongs_to :position
  belongs_to :section

  before_create :inactive_confirmation_old

  def inactive_confirmation_old
    last_confirmation = Confirmation.where(scout_id: self.scout_id).last
    last_confirmation.update_columns(status: false) if last_confirmation.present?
  end


end
