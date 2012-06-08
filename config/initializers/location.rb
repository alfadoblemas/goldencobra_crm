Rails.application.config.to_prepare do
  Goldencobra::Location.class_eval do
    has_many :addresses, :class_name => GoldencobraCrm::Address
    accepts_nested_attributes_for :addresses
    has_many :companies, :class_name => GoldencobraCrm::Company
    accepts_nested_attributes_for :companies
  end
end
