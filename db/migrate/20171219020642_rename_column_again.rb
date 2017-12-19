class RenameColumnAgain < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :ChangeTypeToCategory, :category
  end
end
