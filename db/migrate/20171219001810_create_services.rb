class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :type
      t.text :detail
      t.float :price

      t.timestamps
    end
  end
end
