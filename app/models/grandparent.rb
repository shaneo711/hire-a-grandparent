class Grandparent < ApplicationRecord
  belongs_to :user

  validates :name, :description, :interest, :location, presence: true
end
