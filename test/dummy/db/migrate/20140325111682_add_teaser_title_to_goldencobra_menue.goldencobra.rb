# This migration comes from goldencobra (originally 20120608095444)
class AddTeaserTitleToGoldencobraMenue < ActiveRecord::Migration
  def change
    add_column :goldencobra_menues, :description_title, :string
  end
end
