# This migration comes from goldencobra (originally 20130104145454)
class AddWeektimesToGoldencobraWidgets < ActiveRecord::Migration
  def change
    remove_column :goldencobra_widgets, :offline_time_start
    remove_column :goldencobra_widgets, :offline_time_end
    add_column :goldencobra_widgets, :offline_time_week_start_end, :text
  end
end
