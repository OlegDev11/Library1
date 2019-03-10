class CreateBooksGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :books_groups do |t|
      t.references :book, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps
    end
  end
end
