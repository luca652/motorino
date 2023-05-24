class AddAddressToMopeds < ActiveRecord::Migration[7.0]
  def change
    add_column :mopeds, :address, :string
  end
end
