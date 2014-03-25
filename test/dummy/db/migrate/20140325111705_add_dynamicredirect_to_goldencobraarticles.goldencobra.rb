# This migration comes from goldencobra (originally 20121003102003)
class AddDynamicredirectToGoldencobraarticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :dynamic_redirection, :string, :default => "false"
    add_column :goldencobra_articles, :redirection_target_in_new_window, :boolean, :default => false
  end
end
