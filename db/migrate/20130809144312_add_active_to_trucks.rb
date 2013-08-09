class AddActiveToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :active, :boolean, :default => true
  end
  def self.down
    remove_column :trucks, :active
  end
end
