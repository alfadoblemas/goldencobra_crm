# This migration comes from goldencobra (originally 20130426123928)
class AddPolymorphicToGoldencobraMetatags < ActiveRecord::Migration
  def change
    add_column :goldencobra_metatags, :metatagable_id, :integer
    add_column :goldencobra_metatags, :metatagable_type, :string
  end
end
