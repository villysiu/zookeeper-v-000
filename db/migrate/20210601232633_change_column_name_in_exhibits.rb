class ChangeColumnNameInExhibits < ActiveRecord::Migration[6.1]
  def change
    rename_column :exhibits, :CreateExhibits, :name
  end
end
