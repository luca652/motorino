class CreateMopeds < ActiveRecord::Migration[7.0]
  def change
    create_table :mopeds do |t|
      t.string :name
      t.string :color
      t.integer :price
      t.text :description
      t.integer :n_of_passengers
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
