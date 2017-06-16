class LostItem < ApplicationRecord
  belongs_to :user
  validates :title, :description, presence: true
  
  scope :available, -> { where(is_approved: true) }
end
