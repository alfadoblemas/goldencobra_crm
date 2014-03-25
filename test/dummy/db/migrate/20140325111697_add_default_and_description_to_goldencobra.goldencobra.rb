# This migration comes from goldencobra (originally 20120814111900)
class AddDefaultAndDescriptionToGoldencobra < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :default, :string
    add_column :goldencobra_widgets, :description, :text
  end
end