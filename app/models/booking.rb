class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grandparent

  validates :name, :description, :location, :interest, :availability, presence: true
  validates :grandparent_id, presence: true
  validates :user_id, presence: true
end
