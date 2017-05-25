class CreatePostGraduations < ActiveRecord::Migration[5.1]
  def change
    create_table :post_graduations do |t|
      t.string :name
      t.string :initials
      t.integer :seniority
      t.string :status

      t.timestamps
    end
  end
end
