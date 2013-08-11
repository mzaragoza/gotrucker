class Subscription < ActiveRecord::Base
  belongs_to :account
  belongs_to :plan
  attr_accessible  :account_id, :plan_id, :price, :name, :slug, :licenses, :subscriptions_type, :subscr_id, :payer_id, :first_name, :last_name, :item_name, :amount1, :amount3, :recurring, :payer_status, :payer_email, :reattempt, :item_numbe, :subscr_dat, :btn_id, :charset, :period1, :mc_amount1, :period3, :mc_amount3, :auth
end

