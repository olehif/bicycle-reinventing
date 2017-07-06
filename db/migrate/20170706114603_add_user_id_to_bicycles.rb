class AddUserIdToBicycles < ActiveRecord::Migration[5.0]
  def change
    add_reference :bicycles, :user, foreign_key: true
  end
end
