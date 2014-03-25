# This migration comes from goldencobra (originally 20130118115233)
class AddPolyToGoldencobraRoleUsers < ActiveRecord::Migration
  def change
    add_column :goldencobra_roles_users, :operator_type, :string, :default => "User"
    rename_column :goldencobra_roles_users, :user_id, :operator_id
  end
end
