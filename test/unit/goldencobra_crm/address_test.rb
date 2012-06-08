# == Schema Information
#
# Table name: goldencobra_crm_addresses
#
#  id          :integer(4)      not null, primary key
#  location_id :integer(4)
#  title       :string(255)
#  customer_id :integer(4)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'test_helper'

module GoldencobraCrm
  class AddressTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
