ActiveAdmin.register GoldencobraCrm::Company, as: "Company" do
  menu parent: "CRM", if: proc{can?(:read, GoldencobraCrm::Company)}
  controller.authorize_resource class: GoldencobraCrm::Company
end
