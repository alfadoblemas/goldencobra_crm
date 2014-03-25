# This migration comes from goldencobra (originally 20120509125734)
class AddTitleToGoldencobraLocations < ActiveRecord::Migration
  def change
    add_column :goldencobra_locations, :title, :string
  end
end
