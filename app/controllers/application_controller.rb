include SessionsHelper
include ApplicationHelper

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    def logged_in_user
      log('logged', logged_in?)
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      log('correct', current_user?(@user))
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      log('admin', current_user.admin?)
      redirect_to(root_url) unless current_user.admin?
    end

end
