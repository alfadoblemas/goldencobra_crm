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
  end
end
