# This migration comes from goldencobra (originally 20130129092029)
class AddPolyToGoldencobraLocations < ActiveRecord::Migration
  def change
    add_column :goldencobra_locations, :locateable_type, :string
    add_column :goldencobra_locations, :locateable_id, :integer
  end
end
