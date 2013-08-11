class AddTwicCardToDrivers < ActiveRecord::Migration
  def self.up
    add_column :drivers, :twic_card, :boolean, :default => false
  end
  def self.down
    add_column :drivers, :twic_card
  end
end
