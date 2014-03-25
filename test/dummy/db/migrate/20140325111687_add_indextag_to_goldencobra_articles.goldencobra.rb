# This migration comes from goldencobra (originally 20120618122627)
class AddIndextagToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :index_of_articles_tagged_with, :string
  end
end
