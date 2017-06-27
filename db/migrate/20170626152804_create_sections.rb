# Create table sections
class CreateSections < ActiveRecord::Migration[5.1]
  # Create table
  def change
    create_table :sections do |t|
      t.string :name
      t.string :initials
      t.integer :status
      t.text :observation
      t.integer :kind

      t.timestamps
    end
  end
end
