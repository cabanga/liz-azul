class Confirmation < ApplicationRecord
  belongs_to :scout
  belongs_to :position
  belongs_to :section
end
