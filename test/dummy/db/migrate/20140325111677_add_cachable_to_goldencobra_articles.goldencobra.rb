# This migration comes from goldencobra (originally 20120420094029)
class AddCachableToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :cacheable, :boolean, :default => true
  end
end
