# == Schema Information
#
# Table name: goldencobra_crm_companies
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  legal_form  :string(255)
#  location_id :integer(4)
#  phone       :string(255)
#  fax         :string(255)
#  website     :string(255)
#  sector      :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'test_helper'

module GoldencobraCrm
  class CompanyTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
