class UserController < ApplicationController
  expose(:current_account){ current_user.account }
  layout 'user_application'
  before_filter :check_user_active
  private
  def check_user_active
    unless current_user.active
      flash[:notice]= t(:user_not_active)
      sign_out current_user
      redirect_to new_user_session_path
    end
  end
end

