# This migration comes from goldencobra (originally 20130730144331)
class AddLinkcheckerToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :link_checker, :text
  end
end
