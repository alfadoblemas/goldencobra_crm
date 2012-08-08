# This migration comes from goldencobra (originally 20120627122742)
class AddSorterLimitToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :sorter_limit, :integer
  end
end
