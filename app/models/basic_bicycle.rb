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

class BasicBicycle < ApplicationRecord
  self.abstract_class = true

  belongs_to :user
  belongs_to :bicycle_category

  mount_uploader :bicycle_photo, BicylePhotoUploader

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
  end
end
