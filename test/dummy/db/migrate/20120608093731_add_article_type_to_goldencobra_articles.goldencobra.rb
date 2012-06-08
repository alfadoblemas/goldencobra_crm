# This migration comes from goldencobra (originally 20120604141401)
class AddArticleTypeToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :article_type, :string
  end
end
