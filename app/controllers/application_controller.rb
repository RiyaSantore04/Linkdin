# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # 	 protected

  #   def configure_permitted_parameters

  #     devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :student_at, :contact])
  #   end
  # end

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[user_name student_at contact])
  end
end
