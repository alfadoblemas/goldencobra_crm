# This migration comes from goldencobra (originally 20121015071150)
class AddLinkTitleToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :redirect_link_title, :string
  end
end
