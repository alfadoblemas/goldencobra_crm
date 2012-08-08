# This migration comes from goldencobra (originally 20120615085225)
class AddExternalurlToGoldencobraArticle < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :external_url_redirect, :string
  end
end
