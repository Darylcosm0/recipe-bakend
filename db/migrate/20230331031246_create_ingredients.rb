class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.integer :quantity
      t.string :measurement_unit
      t.integer :calories

      t.timestamps
    end
  end
end
