class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :title
      t.text :desc
      t.string :course
      t.integer :serves

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
