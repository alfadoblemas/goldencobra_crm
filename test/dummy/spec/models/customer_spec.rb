require 'spec_helper'

describe GoldencobraCrm::Customer do
  it { should have_many(:addresses) }
  it { should belong_to(:company) }

  it "should have a shipping address" do
    location = Goldencobra::Location.create(street: "Zossener Str. 55", zip: "10961", city: "Berlin")
    customer = GoldencobraCrm::Customer.create()
    address = GoldencobraCrm::Address.create(title: "shipping address", location_id: location.id, customer_id: customer.id)
    customer.shipping_address.should eql(address)
  end
end
