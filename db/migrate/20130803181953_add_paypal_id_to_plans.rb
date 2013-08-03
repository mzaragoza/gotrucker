class AddPaypalIdToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :paypal_id, :string, :default => ''
  end
end
