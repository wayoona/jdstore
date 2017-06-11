# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  quantity       :integer
#  price          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  image          :string
#  category_id    :integer
#  particulars    :text
#  favorite_count :integer          default(0)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
