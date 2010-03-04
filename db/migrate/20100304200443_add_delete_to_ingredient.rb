class AddDeleteToIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :deleted, :boolean, :default => false 
  end

  def self.down
    remove_column :ingredients, :deleted
  end
end
