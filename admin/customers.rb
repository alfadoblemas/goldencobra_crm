ActiveAdmin.register GoldencobraCrm::Customer do
  #menu parent: "CRM", if: proc{can?(:read, GoldencobraCrm::Customer)}
  #controller.authorize_resource class: GoldencobraCrm::Customer
end
