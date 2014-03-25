# This migration comes from goldencobra (originally 20130225154241)
class AddRedirectToGoldencobraRoles < ActiveRecord::Migration
  def change
    add_column :goldencobra_roles, :redirect_after_login, :string, :default => "reload"
  end
end
