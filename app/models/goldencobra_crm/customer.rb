# == Schema Information
#
# Table name: goldencobra_crm_customers
#
#  id         :integer(4)      not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  email      :string(255)
#  login      :string(255)
#  company_id :integer(4)
#  user_id    :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

module GoldencobraCrm
  class Customer < ActiveRecord::Base
    attr_accessible :company_id, :email, :firstname, :lastname, :login, :user_id
    has_many :addresses
    belongs_to :company

    def shipping_address
      GoldencobraCrm::Address.where(:customer_id => self.id, :title => "shipping address").first
    end

    def set_shipping_address(address_id, customer_id)
      GoldencobraCrm::Address.where(:customer_id => customer_id).each do |a|
        if a.title == "shipping address"
          a.update_attributes(:title => "old shipping address")
        end
      end
      GoldencobraCrm::Address.find_by_id(address_id).update_attributes(:title => "shipping address")
    end
  end
end
