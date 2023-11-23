class AddGenreToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :genre, :string, array: true, default: [], null: false
  end
end
