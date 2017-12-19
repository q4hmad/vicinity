class ChangeTypeToCategory < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :type, :ChangeTypeToCategory
  end
end
