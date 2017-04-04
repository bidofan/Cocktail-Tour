class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
	add_column :recipes, :name, :string
	add_column :recipes, :recipe, :string
      t.timestamps
    end
  end
end
