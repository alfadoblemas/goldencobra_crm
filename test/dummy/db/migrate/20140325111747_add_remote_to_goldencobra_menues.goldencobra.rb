# This migration comes from goldencobra (originally 20131129143509)
class AddRemoteToGoldencobraMenues < ActiveRecord::Migration
  def change
    add_column :goldencobra_menues, :remote, :boolean, :default => false
  end
end
