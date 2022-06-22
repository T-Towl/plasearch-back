class AddDetailsToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :address, :string
    add_column :shops, :opening_hours, :number
    add_column :shops, :photo_reference, :string
    add_column :shops, :rating, :number
  end
end
