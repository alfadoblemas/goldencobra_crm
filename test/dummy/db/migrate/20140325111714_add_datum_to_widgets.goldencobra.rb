# This migration comes from goldencobra (originally 20121121144623)
class AddDatumToWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :offline_date_start, :date
    add_column :goldencobra_widgets, :offline_date_end, :date
  end
end
