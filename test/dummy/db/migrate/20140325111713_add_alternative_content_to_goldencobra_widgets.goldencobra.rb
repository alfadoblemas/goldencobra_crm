# This migration comes from goldencobra (originally 20121030120838)
class AddAlternativeContentToGoldencobraWidgets < ActiveRecord::Migration
  def change
    add_column :goldencobra_widgets, :alternative_content, :text
  end
end
