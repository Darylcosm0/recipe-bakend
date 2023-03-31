class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :instructions
      t.string :description
      t.string :cuisine
      t.string :recipe_image
      t.integer :user_id

      t.timestamps
    end
  end
end
