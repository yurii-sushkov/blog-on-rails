class WelcomeController < ApplicationController
  def index
    current_user.update_attribute :admin, true if user_signed_in? and current_user.id == 1
  end
end
