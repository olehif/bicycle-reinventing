# == Schema Information
#
# Table name: bicycle_suggestions
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  bicycle_photo       :string
#  user_id             :integer
#  bicycle_category_id :integer
#  bicycle_id          :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class BicycleSuggestion < BasicBicycle
  belongs_to :bicycle
end
