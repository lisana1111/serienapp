class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate

  private

  def authenticate
    user = authenticate_with_http_basic do |email, p|
      User.authenticate_by(email: email, password: p)
    end

    if user
      @current_user = user
    else
      request_http_basic_authentication
    end
  end
end
