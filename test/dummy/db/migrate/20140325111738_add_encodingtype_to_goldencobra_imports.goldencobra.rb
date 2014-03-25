# This migration comes from goldencobra (originally 20130722152135)
class AddEncodingtypeToGoldencobraImports < ActiveRecord::Migration
  def change
    add_column :goldencobra_imports, :encoding_type, :string
  end
end
