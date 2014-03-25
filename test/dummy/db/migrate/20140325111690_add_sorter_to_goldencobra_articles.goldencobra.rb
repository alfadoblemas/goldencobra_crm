# This migration comes from goldencobra (originally 20120619123238)
class AddSorterToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :sort_order, :string
  end
end
