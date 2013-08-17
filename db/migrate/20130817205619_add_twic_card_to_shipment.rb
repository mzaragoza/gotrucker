class AddTwicCardToShipment < ActiveRecord::Migration
  def self.up
    add_column :shipments, :twic_card, :boolean, :default => false
  end
  def self.down
    remove_column :shipments, :twic_card
  end
end
