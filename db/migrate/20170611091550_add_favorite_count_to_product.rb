class AddFavoriteCountToProduct < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :favorite_count, :integer , default: 0
  end
end
