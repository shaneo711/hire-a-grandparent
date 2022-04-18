class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @grandparents = policy_scope(Grandparent)
    @bookings = policy_scope(Booking)
  end
end
