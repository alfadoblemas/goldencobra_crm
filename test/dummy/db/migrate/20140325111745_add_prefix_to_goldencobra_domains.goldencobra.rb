# This migration comes from goldencobra (originally 20130925133203)
class AddPrefixToGoldencobraDomains < ActiveRecord::Migration
  def change
    add_column :goldencobra_domains, :url_prefix, :string
  end
end
