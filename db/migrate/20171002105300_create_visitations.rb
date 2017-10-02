class CreateVisitations < ActiveRecord::Migration[5.1]
  def change
    create_table :visitations do |t|
      t.references :visitor, foreign_key: true
      t.references :user, foreign_key: true
      t.references :section, foreign_key: true
      t.datetime :input
      t.datetime :output

      t.timestamps
    end
  end
end
