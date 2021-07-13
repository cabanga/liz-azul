class ApplicationController < ActionController::Base
    before_action :blocked_user
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password) }
    end

    def blocked_user
        if current_user.present? && current_user.blocked
            sign_out current_user
            redirect_to root_path, :notice => "Esta conta esta supensa, por favor contactar nosso Suporte"
        end
    end
    
end
