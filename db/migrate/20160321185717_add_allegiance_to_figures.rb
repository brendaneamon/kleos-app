class AddAllegianceToFigures < ActiveRecord::Migration
  def change
    add_column :figures, :allegiance, :string
  end
end
