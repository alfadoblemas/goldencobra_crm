# This migration comes from goldencobra (originally 20120814114800)
class ChangeDefaultTypeToGoldencobraWidgets < ActiveRecord::Migration
  def change
    change_column :goldencobra_widgets, :default, :boolean
    
  end
end