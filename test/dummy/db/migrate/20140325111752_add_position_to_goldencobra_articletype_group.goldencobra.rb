# This migration comes from goldencobra (originally 20140128112747)
# encoding: utf-8

class AddPositionToGoldencobraArticletypeGroup < ActiveRecord::Migration
  def change
    add_column :goldencobra_articletype_groups, :position, :string, :default => "first_block"
  end
end
