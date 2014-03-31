# encoding: utf-8

ActiveAdmin.register GoldencobraCrm::Mandate, as: "Mandate" do
  menu parent: "CRM", if: proc{can?(:update, GoldencobraCrm::Mandate)}

  index do
    column :external_id
    column :reference_id
    column :server_ip
    column :created_at
    default_actions
  end

end
