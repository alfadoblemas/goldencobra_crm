# This migration comes from goldencobra (originally 20121030112343)
class AddOfflineActiveToGoldencobraWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :offline_time_active, :boolean
  end
end
