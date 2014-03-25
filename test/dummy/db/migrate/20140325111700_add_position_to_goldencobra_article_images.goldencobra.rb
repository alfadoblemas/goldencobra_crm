# This migration comes from goldencobra (originally 20120926133635)
class AddPositionToGoldencobraArticleImages < ActiveRecord::Migration
  def change
    add_column :goldencobra_article_images, :position, :string
  end
end
