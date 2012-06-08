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

module GoldencobraCrm
  class Address < ActiveRecord::Base
    attr_accessible :customer_id, :location_id, :title
    belongs_to :location, class_name: Goldencobra::Location
    accepts_nested_attributes_for :location
  end
end
