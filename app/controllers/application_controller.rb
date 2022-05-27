# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:user_name, :student_at, :contact, { educations_attributes: %i[collage course field_of_study] },
                                             { skills_attributes: [:skill] }, { experiences_attributes: %i[designation company_name location probation_period] }])
  end
end
