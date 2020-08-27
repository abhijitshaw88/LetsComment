class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # def after_sign_up_path_for(resource)
  #   redirect_to 'http://www.google.com'
  # end
 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up,
                                     keys: [:email, :password, :password_confirmation, :fullname, :contact, :address]
                                     )
   devise_parameter_sanitizer.permit(:account_update,
                                     keys: [:email, :password, :password_confirmation, :fullname, :contact, :address]
                                   )
 end
end
