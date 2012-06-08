require 'spec_helper'

describe GoldencobraCrm::Address do
  it { should belong_to(:location) }
  it { should belong_to(:customer) }

  it "shouldn't have two shipping addresses for the same user" do
    customer = GoldencobraCrm::Customer.create
    location = Goldencobra::Location.create(street: "Zossener Str. 55", zip: "10961", city: "Berlin")
    address1 = GoldencobraCrm::Address.create(location_id: location.id, customer_id: customer.id, title: "shipping address")
    address2 = GoldencobraCrm::Address.create(location_id: location.id, customer_id: customer.id, title: "other")
    customer.set_shipping_address(address2.id, customer.id)
    GoldencobraCrm::Address.find_by_id(address1.id).title.should == "old shipping address"
    GoldencobraCrm::Address.find_by_id(address2.id).title.should == "shipping address"
  end
end
