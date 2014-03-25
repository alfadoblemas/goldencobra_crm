# This migration comes from goldencobra (originally 20120625131154)
class AddAuthorToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :author, :string
  end
end
