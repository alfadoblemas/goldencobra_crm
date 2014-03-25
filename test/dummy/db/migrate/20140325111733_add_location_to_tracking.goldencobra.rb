# This migration comes from goldencobra (originally 20130405074654)
class AddLocationToTracking < ActiveRecord::Migration
  def change
    add_column :goldencobra_trackings, :location, :string
  end
end
