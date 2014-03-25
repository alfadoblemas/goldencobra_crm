# This migration comes from goldencobra (originally 20130301144344)
class AddIndextypesToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :display_index_types, :string, :default => "show"
  end
end
