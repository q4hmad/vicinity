class RenameColumnToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :category, :name
  end
end
