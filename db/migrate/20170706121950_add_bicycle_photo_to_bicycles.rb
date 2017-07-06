class AddBicyclePhotoToBicycles < ActiveRecord::Migration[5.0]
  def change
    add_column :bicycles, :bicycle_photo, :string
  end
end
