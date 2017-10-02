class CreateVisitors < ActiveRecord::Migration[5.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :register
      t.string :phone
      t.integer :kind

      t.timestamps
    end
  end
end
