class Users::TrucksController < UserController
  expose(:trucks){ current_account.trucks.order("id DESC").scoped{} }
  expose(:truck)
  expose(:comment) { truck.comments.new}

  def create
    if current_account.subscription.licenses <= current_account.trucks.where(:active => true).count
      truck.active = false
      flash[:error] = t(:excited_licenses)
    end
    if truck.save
      flash[:notice] = t(:truck_was_successfully_created)
      redirect_to(users_trucks_path)
    else
      render :new
    end
  end

  def update
    if current_account.subscription.licenses <= current_account.trucks.where(:active => true).count
      truck.active = false
      flash[:error] = t(:excited_licenses)
    end
    if truck.save
      flash[:notice] = t(:truck_was_successfully_updated)
      redirect_to(users_trucks_path)
    else
      render :edit
    end
  end
  private
  def check_licences
  end
end

