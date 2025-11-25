class AddHoursToBugs < ActiveRecord::Migration
  def self.up
    add_column :bugs, :hours, :decimal, precision: 9, scale: 2
  end

  def self.down
    remove_column :bugs, :hours
  end
end