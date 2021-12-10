class ApplicationController < ActionController::Base
    
    before_action :set_brands, except:[:current_user,  :user_signed_in?, :authenticate_user!,:find_cart]
    
    def current_user
        @current_user ||= User.find_by_id session[:user_id]
    end
    helper_method :current_user

    def user_signed_in?
        current_user.present?
    end
    helper_method :user_signed_in?

    def authenticate_user!
        redirect_to new_session_path, alert: "Please sign in" unless user_signed_in?
    end

    def set_brands
        @brands = Brand.all
      
    end

  
end
