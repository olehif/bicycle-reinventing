# == Schema Information
#
# Table name: bicycle_categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BicycleCategory < ApplicationRecord
  has_many :bicycles
end
