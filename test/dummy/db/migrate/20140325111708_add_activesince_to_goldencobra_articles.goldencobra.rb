# This migration comes from goldencobra (originally 20121007125002)
class AddActivesinceToGoldencobraArticles < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :active_since, :datetime, :default => (Time.now - 1.week)
  end
end
