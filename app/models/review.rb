class Review < ApplicationRecord
  belongs_to :user
  has_many :grandparent
  validates :name,:description, presence: true
end
