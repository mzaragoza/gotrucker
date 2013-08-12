class Admins::AccountsController < AdminController
  expose(:accounts) {Account.order("id DESC").scoped{}}
  expose(:account)

  def create
    if account.save
      flash[:notice] = t(:account_was_successfully_created)
      redirect_to(admins_account_path(account))
    else
      render :new
    end
  end

  def update
    if account.update_attributes(params[:account])
      flash[:notice] = t(:account_was_successfully_updated)
      redirect_to(admins_account_path(account))
    else
      render :edit
    end
  end
end

