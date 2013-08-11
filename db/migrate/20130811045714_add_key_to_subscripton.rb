class AddKeyToSubscripton < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :key, :string, :default => ''
  end
  def self.down
    add_column :subscriptions, :key
  end
end
