# This migration comes from goldencobra (originally 20130114154115)
class AddSorterToGoldencobraPermissions < ActiveRecord::Migration
  def change
    #add_column :goldencobra_permissions, :sorter_id, :integer, :default => 0
  end
end
