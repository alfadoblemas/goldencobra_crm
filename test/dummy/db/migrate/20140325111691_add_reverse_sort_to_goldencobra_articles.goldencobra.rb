# This migration comes from goldencobra (originally 20120619132259)
class AddReverseSortToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :reverse_sort, :boolean
  end
end
