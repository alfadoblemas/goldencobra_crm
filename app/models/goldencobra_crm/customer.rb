module GoldencobraCrm
  class Customer < ActiveRecord::Base
    attr_accessible :company_id, :email, :firstname, :lastname, :login, :user_id
  end
end
