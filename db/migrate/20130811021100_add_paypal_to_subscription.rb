class AddPaypalToSubscription < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :subscr_id, :string, :default => ''
    add_column :subscriptions, :payer_id, :string, :default => ''
    add_column :subscriptions, :first_name, :string, :default => ''
    add_column :subscriptions, :last_name, :string, :default => ''
    add_column :subscriptions, :item_name, :string, :default => ''
    add_column :subscriptions, :amount1, :string, :default => ''
    add_column :subscriptions, :amount3, :string, :default => ''
    add_column :subscriptions, :recurring, :string, :default => ''
    add_column :subscriptions, :payer_status, :string, :default => ''
    add_column :subscriptions, :payer_email, :string, :default => ''
    add_column :subscriptions, :reattempt, :string, :default => ''
    add_column :subscriptions, :item_number, :string, :default => ''
    add_column :subscriptions, :subscr_date, :string, :default => ''
    add_column :subscriptions, :btn_id, :string, :default => ''
    add_column :subscriptions, :charset, :string, :default => ''
    add_column :subscriptions, :period1, :string, :default => ''
    add_column :subscriptions, :mc_amount1, :string, :default => ''
    add_column :subscriptions, :period3, :string, :default => ''
    add_column :subscriptions, :mc_amount3, :string, :default => ''
    add_column :subscriptions, :auth, :string, :default => ''
  end
  def self.down
    remove_column :subscriptions, :subscr_id
    remove_column :subscriptions, :payer_id
    remove_column :subscriptions, :first_name
    remove_column :subscriptions, :last_name
    remove_column :subscriptions, :item_name
    remove_column :subscriptions, :amount1
    remove_column :subscriptions, :amount3
    remove_column :subscriptions, :recurring
    remove_column :subscriptions, :payer_status
    remove_column :subscriptions, :payer_email
    remove_column :subscriptions, :reattempt
    remove_column :subscriptions, :item_number
    remove_column :subscriptions, :subscr_date
    remove_column :subscriptions, :btn_id
    remove_column :subscriptions, :charset
    remove_column :subscriptions, :period1
    remove_column :subscriptions, :mc_amount1
    remove_column :subscriptions, :period3
    remove_column :subscriptions, :mc_amount3
    remove_column :subscriptions, :auth
  end
end
