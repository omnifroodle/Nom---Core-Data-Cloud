class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.decimal :quantity
      t.string :unit_of_measure

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
