# == Schema Information
#
# Table name: bicycles
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  bicycle_category_id :integer
#  bicycle_photo       :string
#

class Bicycle < BasicBicycle
  has_many :bicycle_suggestions
  has_many :bicycle_usages
end
