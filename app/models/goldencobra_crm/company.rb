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

module GoldencobraCrm
  class Company < ActiveRecord::Base
    attr_accessible :fax, :legal_form, :location_id, :phone, :sector, :title, :website
    belongs_to :location, :class_name => Goldencobra::Location
    accepts_nested_attributes_for :location
  end
end
