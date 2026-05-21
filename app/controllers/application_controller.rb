class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # homes_controllerにallow_unauthenticated_access only: %i[ top about ]を追加した

  private

  def after_authentication_url
    about_path
  end

  def after_logout_url
    about_path
  end


end
