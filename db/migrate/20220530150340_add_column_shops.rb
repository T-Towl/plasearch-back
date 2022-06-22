class AddColumnShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :lat, :number
    add_column :shops, :lng, :number
  end
end
