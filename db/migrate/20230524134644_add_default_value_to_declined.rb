class AddDefaultValueToDeclined < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :declined, :boolean, default: false
  end
end
