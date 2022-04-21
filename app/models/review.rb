class Review < ApplicationRecord
  belongs_to :user
  has_many :grandparent
  validates :name,:description,:rating,  presence: true
  #review model
end
