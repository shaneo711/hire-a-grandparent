class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grandparent

  validates :date, :title, :description, presence: true
 end
