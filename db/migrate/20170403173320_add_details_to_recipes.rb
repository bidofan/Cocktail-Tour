class AddDetailsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :recipe, :string
  end
end
