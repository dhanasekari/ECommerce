class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name
    	t.string :description
    	t.boolean :active
    	t.references :seller, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
