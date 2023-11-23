class AddAddressToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :address, :string
  end
end
