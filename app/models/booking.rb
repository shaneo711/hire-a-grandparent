class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grandparent

  # validates :description, :location, :interest, :availability, presence: true
  # validates :grandparent_id, presence: true
  # validates :user_id, presence: true
  after_create :notify_user

  private
  def notify_user
    notification = BookingNotification.with(booking: self)
    notification.deliver(grandparent.user)
  end

  validates :date, :title, :description, presence: true
 end
