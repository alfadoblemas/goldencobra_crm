# This migration comes from goldencobra (originally 20130723084542)
class AddAssgroupToGoldencobraImporter < ActiveRecord::Migration
  def change
    add_column :goldencobra_imports, :assignment_groups, :text
  end
end
