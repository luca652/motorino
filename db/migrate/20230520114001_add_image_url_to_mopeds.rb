class AddImageUrlToMopeds < ActiveRecord::Migration[7.0]
  def change
    add_column :mopeds, :image_url, :string
  end
end
