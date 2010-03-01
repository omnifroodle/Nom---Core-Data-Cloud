class AddDeleteToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :deleted, :boolean, :default => false 
  end

  def self.down
    remove_column :recipes, :deleted
  end
end
