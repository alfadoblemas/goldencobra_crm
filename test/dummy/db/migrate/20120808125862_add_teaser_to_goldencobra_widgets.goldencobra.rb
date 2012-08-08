# This migration comes from goldencobra (originally 20120618141449)
class AddTeaserToGoldencobraWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :teaser, :string
  end
end
