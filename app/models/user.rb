class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :timeoutable, :validatable

  has_many :grandparents
  has_many :notifications, as: :recipient

  def unchecked_notifications
    notifications.where("created_at > ?", last_checked_notifications)
  end
end
