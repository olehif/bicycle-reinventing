class AddBicycleCategoryIdToBicycles < ActiveRecord::Migration[5.0]
  def change
    add_reference :bicycles, :bicycle_category, foreign_key: true
  end
end
