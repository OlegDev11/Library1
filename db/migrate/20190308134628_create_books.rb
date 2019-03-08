class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.integer :group_id

      t.timestamps
    end
  end
end
