class NotificationsController < ApplicationController
  skip_after_action :verify_policy_scoped

  def index
    @notifications = current_user.unchecked_notifications
    render
    Thread.new do
      current_user.update(last_checked_notifications: DateTime.now)
    end
  end
end
