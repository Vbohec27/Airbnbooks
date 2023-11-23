class UpdateGenreInBooks < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :genre
    add_column :books, :genre, :string, array: true, default: [], null: false
  end
end
