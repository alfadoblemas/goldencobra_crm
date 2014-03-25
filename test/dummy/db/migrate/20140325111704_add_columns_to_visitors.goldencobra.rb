# This migration comes from goldencobra (originally 20121002143111)
class AddColumnsToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :provider, :string
    add_column :visitors, :uid, :string
    add_column :visitors, :agb, :boolean, :default => false
    add_column :visitors, :newsletter, :boolean
  end
end
