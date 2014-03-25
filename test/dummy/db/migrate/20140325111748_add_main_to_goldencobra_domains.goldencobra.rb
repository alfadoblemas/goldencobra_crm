# This migration comes from goldencobra (originally 20131216110750)
# encoding: utf-8

class AddMainToGoldencobraDomains < ActiveRecord::Migration
  def change
    add_column :goldencobra_domains, :main, :boolean, :default => false
  end
end
