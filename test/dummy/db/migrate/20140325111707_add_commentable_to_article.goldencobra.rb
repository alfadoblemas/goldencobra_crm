# This migration comes from goldencobra (originally 20121006095912)
class AddCommentableToArticle < ActiveRecord::Migration
  def change
    add_column :goldencobra_articles, :commentable, :boolean, :default => false
  end
end
