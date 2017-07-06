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

require 'test_helper'

class BicycleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
