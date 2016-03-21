class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name, null: false
      t.string :greek_name, null: false
      t.text :description
      t.string :img_url
    end
  end
end
