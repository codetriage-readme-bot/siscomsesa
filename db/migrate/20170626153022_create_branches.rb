class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :number
      t.integer :status
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
