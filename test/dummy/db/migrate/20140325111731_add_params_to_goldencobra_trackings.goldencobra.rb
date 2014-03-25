# This migration comes from goldencobra (originally 20130405071320)
class AddParamsToGoldencobraTrackings < ActiveRecord::Migration
  def change
    add_column :goldencobra_trackings, :url_paremeters, :string
  end
end
