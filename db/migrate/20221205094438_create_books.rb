class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :username
      t.string :title
      t.string :author
      t.integer :publication_year
      t.integer :user_id
      t.string :genre

      t.timestamps
    end
  end
end
