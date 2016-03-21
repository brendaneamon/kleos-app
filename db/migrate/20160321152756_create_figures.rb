class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.string :name, null: false
      t.string :greek_name, null: false
      t.text :epithets
      t.text :description
      t.boolean :is_mortal
      t.string :img_url
      t.integer :home_id
    end
  end
end
