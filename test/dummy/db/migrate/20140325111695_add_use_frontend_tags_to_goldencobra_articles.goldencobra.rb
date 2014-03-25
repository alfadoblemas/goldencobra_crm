# This migration comes from goldencobra (originally 20120730103912)
class AddUseFrontendTagsToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :use_frontend_tags, :boolean, default: false
  end
end
