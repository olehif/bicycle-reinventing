class BicycleUsage < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user

  validates :bicycle_id, uniqueness: { scope: :user_id }
end
