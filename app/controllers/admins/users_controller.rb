class Admins::UsersController < AdminController
  before_filter :check_password_submitted, :only => :update
  expose(:users) {User.order("id DESC").scoped{}}
  expose(:user)
  expose(:comment) { user.comments.new}

  def create
    if user.save
      flash[:notice] = t(:user_was_successfully_created)
      redirect_to(admins_user_path(user))
    else
      render :new
    end
  end

  def update
    if user.update_attributes(params[:user])
      flash[:notice] = t(:user_was_successfully_updated)
      redirect_to(admins_user_path(user))
    else
      render :edit
    end
  end
  def login_as
    sign_in(User.find(params[:id]), :bypass => true)
    redirect_to users_dashboard_path
  end
  private
  def check_password_submitted
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      user.updating_password = false
    else
      user.updating_password = true
    end
  end
end

