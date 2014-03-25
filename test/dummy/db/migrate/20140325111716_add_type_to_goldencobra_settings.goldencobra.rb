# This migration comes from goldencobra (originally 20121206104701)
class AddTypeToGoldencobraSettings < ActiveRecord::Migration
  def change
    add_column :goldencobra_settings, :data_type, :string, :default => "string"
  end
end
