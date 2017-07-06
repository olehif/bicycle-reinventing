# == Schema Information
#
# Table name: bicycles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Bicycle < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle_category
end
