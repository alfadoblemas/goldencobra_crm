# This migration comes from goldencobra (originally 20120423141814)
class AddImagegalleryToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :image_gallery_tags, :string
  end
end
