class Users::DashboardsController < UserController
  
  expose(:trucks){ current_account.trucks.order("id DESC").scoped{} }
end

