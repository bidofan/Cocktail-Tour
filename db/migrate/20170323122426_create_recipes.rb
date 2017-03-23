class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
    	t.string :text
    	t.string :recipe
      t.timestamps
    end
  end
end
