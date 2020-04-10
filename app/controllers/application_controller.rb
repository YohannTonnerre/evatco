class ApplicationController < ActionController::Base

	before_action :configure_devise_parameters, if: :devise_controller?

	def configure_devise_parameters
		devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name,:last_name, :date_of_birth, :name, :email, :password, :password_confirmation)}
	end

	def _rgpd
		
	end
end
