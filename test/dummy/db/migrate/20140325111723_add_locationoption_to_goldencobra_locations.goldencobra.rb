# This migration comes from goldencobra (originally 20130204102953)
class AddLocationoptionToGoldencobraLocations < ActiveRecord::Migration
  def change
    add_column :goldencobra_locations, :street_number, :string
  end
end
