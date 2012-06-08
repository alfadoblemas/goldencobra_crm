require "spec_helper"

describe GoldencobraCrm::Company do
  it { should belong_to(:location) }
end
